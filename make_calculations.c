//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

void	draw_column(int x, int height, t_wolf *params)
{
	int	start;
	int i;
	int y;
	int position;

	start = (SCREEN_HEIGHT - height) / 2;
	i = -1;
	while (++i < height)
	{
		y = start + i;
		position = x + (y * SCREEN_WIDTH);
		((int*)params->sdl.surface->pixels)[position] = params->side == 0
				? 0x404040
				: 0xAFAFAF;
	}
}

void	make_calculations(t_wolf *params)
{
	int	i;
	int wall_height;

	i = -1;
	while (++i < SCREEN_WIDTH)
	{
		wall_height = height_for_column(i, params);
		draw_column(i, wall_height, params);
		ft_printf("i = %d, height = %d\n", i, wall_height);
	}
	SDL_UpdateWindowSurface(params->sdl.window);
}