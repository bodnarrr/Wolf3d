//
// Created by Andrii Bodnar on 4/24/19.
//

#include "wolf3d.h"

void 	init_parameters(t_wolf *params)
{
	ft_bzero(params, sizeof(t_wolf));
	params->is_working = 1;
	params->map_width = MOCK_MAP_WIDTH;
	params->map_height = MOCK_MAP_HEIGHT;

}
