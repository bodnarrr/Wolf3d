//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

void	init_position(t_wolf *params)
{
	params->pos_info.pos_x = 6;
	params->pos_info.pos_y = 2;
	params->pos_info.dir_x = -1;
	params->pos_info.dir_y = 0;
	params->pos_info.plane_x = 0;
	params->pos_info.plane_y = 0.66;
}