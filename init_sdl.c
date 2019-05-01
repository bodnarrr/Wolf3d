/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_sdl.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abodnar <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 17:45:27 by abodnar           #+#    #+#             */
/*   Updated: 2019/05/01 17:45:28 by abodnar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "wolf3d.h"

bool	init_sdl(t_wolf *params)
{
	if (SDL_Init(SDL_INIT_VIDEO) < 0)
	{
		params->error = ft_strdup(SDL_GetError());
		return (FALSE);
	}
	params->sdl.window = SDL_CreateWindow("Wolf3d", SDL_WINDOWPOS_UNDEFINED,
			SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH,
			SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
	if (!params->sdl.window)
	{
		params->error = ft_strdup(SDL_GetError());
		return (FALSE);
	}
	params->sdl.surface = SDL_GetWindowSurface(params->sdl.window);
	return (TRUE);
}
