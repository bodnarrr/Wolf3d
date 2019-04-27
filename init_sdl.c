//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

bool	init_sdl(t_wolf *params) {
	int *pixels;
	int center;

	if (SDL_Init(SDL_INIT_VIDEO) < 0) {
		params->error = ft_strdup(SDL_GetError());
		return (0);
	}
	params->sdl.window = SDL_CreateWindow("Wolf3d", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH,
										  SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
	if (!params->sdl.window) {
		params->error = ft_strdup(SDL_GetError());
		return (0);
	}
	params->sdl.surface = SDL_GetWindowSurface(params->sdl.window);
	SDL_FillRect(params->sdl.surface, NULL, SDL_MapRGB(params->sdl.surface->format, 0x7F, 0x3F, 0x5F));
	pixels = (int *) params->sdl.surface->pixels;
	center = SCREEN_WIDTH * SCREEN_HEIGHT / 2 + SCREEN_WIDTH / 2;
	pixels[center] = 0xFFFFFF;
	SDL_UpdateWindowSurface(params->sdl.window);
}