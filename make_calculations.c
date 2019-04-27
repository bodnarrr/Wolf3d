//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

void	make_calculations(t_wolf *params)
{
	int	i;

	i = -1;
	while (++i < params->map_width)
	{
		params->pos_info.camera_x = 2 * (double)i * (double)params->map_width - 1;
		params->pos_info.ray_dir_x = params->pos_info.dir_x + params->pos_info.plane_x * params->pos_info.camera_x;
		params->pos_info.ray_dir_y = params->pos_info.dir_y + params->pos_info.plane_y * params->pos_info.camera_x;

		int map_x = (int)params->pos_info.pos_x;
		int map_y = (int)params->pos_info.pos_y;

		double side_dist_x;
		double side_dist_y;

		double delta_dist_x = fabs(1.0 / params->pos_info.ray_dir_x);
		double delta_dist_y = fabs(1.0 / params->pos_info.ray_dir_y);

		double perp_wall_dist;

		int step_x;
		int step_y;

		int hit = 0;
		int side;

		if (params->pos_info.ray_dir_x < 0)
		{
			step_x = -1;
			side_dist_x = (params->pos_info.pos_x - (double)map_x) * delta_dist_x;
		}
		else
		{
			step_x = 1;
			side_dist_x = ((double)map_x + 1.0 - params->pos_info.pos_x);

		}
		if (params->pos_info.ray_dir_y < 0)
		{
			step_y = -1;
			side_dist_y = (params->pos_info.pos_y - (double)map_y) * delta_dist_y;
		}
		else
		{
			step_y = 1;
			side_dist_y = ((double)map_y + 1.0 - params->pos_info.pos_y) * delta_dist_y;
		}
	}

}