/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   make_calculations.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abodnar <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 17:45:46 by abodnar           #+#    #+#             */
/*   Updated: 2019/05/01 17:45:47 by abodnar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "wolf3d.h"

static int	make_brighter(int color)
{
	double	brightness;
	int		red;
	int		green;
	int		blue;
	int		result;

	brightness = 0.99;
	red = (int)((double)(color & 0xFF0000) * brightness);
	green = (int)((double)(color & 0x00FF00) * brightness);
	blue = (int)((double)(color & 0x0000FF) * brightness);
	result = red | green | blue;
	return (result);
}

static int	choose_color(int y, t_wolf *params)
{
	int	res;

	res = params->side ? params->wall_color : make_brighter(params->wall_color);
	if (params->side)
		res = y % 3 == 0 ? res * 2 : res;
	else
		res = y % 30 < 5 ? res * 2 : res;
	return (res);
}

static void	draw_column(int x, int height, t_wolf *params)
{
	int	start;
	int *pixels;
	int i;
	int pos;

	start = (SCREEN_HEIGHT - height) / 2;
	pixels = (int*)params->sdl.surface->pixels;
	i = -1;
	while (++i < SCREEN_HEIGHT)
	{
		pos = x + (i * SCREEN_WIDTH);
		if (i < start)
			pixels[pos] = SKY;
		else if (i > start + height)
			pixels[pos] = GROUND;
		else
			pixels[pos] = choose_color(pos, params);
	}
}

void		make_calculations(t_wolf *params)
{
	int	i;
	int wall_height;

	ft_bzero(params->sdl.surface->pixels, sizeof(int)
										* SCREEN_HEIGHT * SCREEN_WIDTH);
	i = -1;
	while (++i < SCREEN_WIDTH)
	{
		wall_height = height_for_column(i, params);
		wall_height = (wall_height < SCREEN_HEIGHT && wall_height > 0)
				? wall_height
				: SCREEN_HEIGHT;
		draw_column(i, wall_height, params);
	}
	SDL_UpdateWindowSurface(params->sdl.window);
}
