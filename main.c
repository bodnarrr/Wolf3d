
#include "wolf3d.h"

int			main(int ac, char **av)
{
	t_wolf	params;

	if (ac != 2)
		return  handle_args_error();
	init_parameters(&params);
	if (!read_map(&params, av[1]))
		return handle_map_error(&params);

	if (SDL_Init(SDL_INIT_VIDEO) < 0)
		printf("SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
	else
	{
		params.sdl.window = SDL_CreateWindow("Wolf3d", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
		if (params.sdl.window == NULL)
			printf("Window could not be created! SDL_Error: %s\n", SDL_GetError());
		else
		{
			params.sdl.surface = SDL_GetWindowSurface(params.sdl.window);
			SDL_FillRect(params.sdl.surface, NULL, SDL_MapRGB(params.sdl.surface->format, 0x7F, 0x3F, 0x5F));

			int *pixels = (int*)params.sdl.surface->pixels;
			int central_point = SCREEN_WIDTH * SCREEN_HEIGHT / 2 + SCREEN_WIDTH / 2;
			pixels[central_point] = 0xFFFFFF;

			SDL_UpdateWindowSurface(params.sdl.window);
		}
	}
	while (params.is_working && SDL_WaitEvent(&params.sdl.event))
	{
		if ((params.sdl.event.type == SDL_QUIT) || (params.sdl.event.type == SDL_KEYDOWN
									 && params.sdl.event.key.keysym.scancode == SDL_SCANCODE_ESCAPE))
			params.is_working = 0;
		else if (params.sdl.event.type == SDL_KEYDOWN)
			ft_printf("Code = %d\n", params.sdl.event.key.keysym.scancode);
	}

	ft_printf("EXITING");
	return 0;
}
