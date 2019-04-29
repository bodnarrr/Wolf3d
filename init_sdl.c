//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

bool	init_sdl(t_wolf *params) {
	if (SDL_Init(SDL_INIT_VIDEO) < 0)
	{
		params->error = ft_strdup(SDL_GetError());
		return (0);
	}
	params->sdl.window = SDL_CreateWindow("Wolf3d", SDL_WINDOWPOS_UNDEFINED,
			SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH,
			SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
	if (!params->sdl.window)
	{
		params->error = ft_strdup(SDL_GetError());
		return (0);
	}
	params->sdl.surface = SDL_GetWindowSurface(params->sdl.window);
}