
#include "wolf3d.h"

int			main(int ac, char **av)
{
	t_wolf	params;

	if (ac != 2)
	{
		params.error = ft_strdup("Usage: ./wolf3d <map_name>.w3d");
		return handle_error(&params);
	}
	init_parameters(&params);
	if (!read_map(&params, av[1]))
		return handle_map_error(&params);
	if (!init_sdl(&params))
		return  handle_error(&params);
	init_position(&params);
	
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
