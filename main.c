
#include "wolf3d.h"

int			main(int ac, char **av)
{
	t_wolf	params;

	if (!check_arguments(ac, &params))
		return handle_error(&params);
	init_parameters(&params);
	if (!read_map(&params, av[1]))
		return handle_map_error(&params);
	if (!init_sdl(&params))
		return  handle_error(&params);
	init_position(&params);

	while (params.is_working && SDL_WaitEvent(&params.sdl.event))
	{
		check_event(params.sdl.event, &params);
		make_calculations(&params);
	}
	return 0;
}
