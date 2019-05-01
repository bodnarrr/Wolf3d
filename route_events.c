/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   route_events.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abodnar <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 18:03:57 by abodnar           #+#    #+#             */
/*   Updated: 2019/05/01 18:03:58 by abodnar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "wolf3d.h"

static void	rotate(bool is_right, t_wolf *params)
{
	double	speed;
	double	old_dir_x;
	double	old_plane_x;

	speed = is_right
			? -params->pos_info.rotate_speed
			: params->pos_info.rotate_speed;
	old_dir_x = params->pos_info.dir_x;
	params->pos_info.dir_x = params->pos_info.dir_x * cos(speed)
			- params->pos_info.dir_y * sin(speed);
	params->pos_info.dir_y = old_dir_x * sin(speed)
			+ params->pos_info.dir_y * cos(speed);
	old_plane_x = params->pos_info.plane_x;
	params->pos_info.plane_x = params->pos_info.plane_x * cos(speed)
			- params->pos_info.plane_y * sin(speed);
	params->pos_info.plane_y = old_plane_x * sin(speed)
			+ params->pos_info.plane_y * cos(speed);
}

static void	move(bool is_move_forward, t_wolf *params)
{
	double	new_y;
	double	new_x;

	new_y = is_move_forward
			? params->pos_info.pos_y
				+ params->pos_info.dir_y * params->pos_info.move_speed
			: params->pos_info.pos_y
				- params->pos_info.dir_y * params->pos_info.move_speed;
	new_x = is_move_forward
			? params->pos_info.pos_x
				+ params->pos_info.dir_x * params->pos_info.move_speed
			: params->pos_info.pos_x
				- params->pos_info.dir_x * params->pos_info.move_speed;
	if (params->map[(int)new_y][(int)params->pos_info.pos_x] == 0)
		params->pos_info.pos_y = new_y;
	if (params->map[(int)params->pos_info.pos_y][(int)new_x] == 0)
		params->pos_info.pos_x = new_x;
}

void		route_events(SDL_Scancode code, t_wolf *params)
{
	if (code == SDL_SCANCODE_UP)
		move(TRUE, params);
	else if (code == SDL_SCANCODE_DOWN)
		move(FALSE, params);
	else if (code == SDL_SCANCODE_LEFT)
		rotate(FALSE, params);
	else if (code == SDL_SCANCODE_RIGHT)
		rotate(TRUE, params);
}
