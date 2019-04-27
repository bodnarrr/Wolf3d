//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

void	check_event(SDL_Event event, t_wolf *params)
{
	if ((event.type == SDL_QUIT) || (event.type == SDL_KEYDOWN
		&& event.key.keysym.scancode == SDL_SCANCODE_ESCAPE))
		params->is_working = 0;
	else if (event.type == SDL_KEYDOWN)
		ft_printf("Code = %d\n", event.key.keysym.scancode);
}
