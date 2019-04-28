//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

int 	height_for_column(int x, t_wolf *params) {
	t_iterations iter;

	ft_bzero(&iter, sizeof(t_iterations));
	iter.camera_x = 2.0 * (double) x / (double) (SCREEN_WIDTH) - 1.0;

	iter.ray_dir_x = params->pos_info.dir_x + params->pos_info.plane_x * iter.camera_x;
	iter.ray_dir_y = params->pos_info.dir_y + params->pos_info.plane_y * iter.camera_x;

	iter.map_x = (int) params->pos_info.pos_x;
	iter.map_y = (int) params->pos_info.pos_y;

	iter.delta_dist_x = fabs((double) 1.0 / iter.ray_dir_x);
	iter.delta_dist_y = fabs((double) 1.0 / iter.ray_dir_y);

	if (iter.ray_dir_x < 0) {
		iter.step_x = -1;
		iter.side_dist_x = (params->pos_info.pos_x - (double) iter.map_x) * iter.delta_dist_x;
	} else {
		iter.step_x = 1;
		iter.side_dist_x = ((double) iter.map_x + (double) 1 - params->pos_info.pos_x) * iter.delta_dist_x;
	}
	if (iter.ray_dir_y < 0) {
		iter.step_y = -1;
		iter.side_dist_y = (params->pos_info.pos_y - (double) iter.map_y) * iter.delta_dist_y;
	} else {
		iter.step_y = 1;
		iter.side_dist_y = ((double) iter.map_y + (double) 1 - params->pos_info.pos_y) * iter.delta_dist_y;
	}

	while (iter.hit == 0) {
		if (iter.side_dist_x < iter.side_dist_y) {
			iter.side_dist_x += iter.delta_dist_x;
			iter.map_x += iter.step_x;
			iter.side = 0;
		} else {
			iter.side_dist_y += iter.delta_dist_y;
			iter.map_y += iter.step_y;
			iter.side = 1;
		}
		if (params->map[iter.map_y][iter.map_x] > 0)
			iter.hit = 1;
	}

	if (iter.side == 0)
		iter.perp_wall_dist =
				((double) iter.map_x - params->pos_info.pos_x + ((double) 1 - (double) iter.step_x) / (double) 2) /
				iter.ray_dir_x;
	else
		iter.perp_wall_dist =
				((double) iter.map_y - params->pos_info.pos_y + ((double) 1 - (double) iter.step_x) / (double) 2) /
				iter.ray_dir_y;

	return (int)((double)SCREEN_HEIGHT / iter.perp_wall_dist);
}

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

		((int*)params->sdl.surface->pixels)[position] = 0xFFFFFF;
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