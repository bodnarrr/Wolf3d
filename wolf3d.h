/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   wolf3d.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abodnar <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 17:46:15 by abodnar           #+#    #+#             */
/*   Updated: 2019/05/01 17:46:16 by abodnar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef WOLF3D_H
# define WOLF3D_H

# include "libftprintf/libftprintf.h"
//# include "/usr/local/Cellar/sdl2/2.0.9_1/include/SDL2/SDL.h"
//# include "/usr/local/Cellar/sdl2/2.0.9_1/include/SDL2/SDL_events.h"
# include "/Users/abodnar/homebrew/include/SDL2/SDL.h"
# include "/Users/abodnar/homebrew/include/SDL2/SDL_events.h"
# include <math.h>

# include <stdbool.h>

# define SCREEN_WIDTH 800
# define SCREEN_HEIGHT 600
# define MOCK_MAP_WIDTH 10
# define MOCK_MAP_HEIGHT 10
# define TRUE 1
# define FALSE 0

typedef struct	s_sdl
{
	SDL_Window	*window;
	SDL_Surface	*surface;
	SDL_Event	event;
}				t_sdl;

typedef struct	s_position
{
	double 		pos_x;
	double 		pos_y;
	double 		dir_x;
	double 		dir_y;
	double 		plane_x;
	double 		plane_y;
	double 		move_speed;
	double		rotate_speed;
}				t_position;

typedef struct	s_wolf
{
	t_sdl		sdl;
	t_position	pos_info;
	int 		**map;
	int 		map_height;
	int 		map_width;
	bool		is_working;
	bool		did_read_map;
	char 		*error;
	int 		side;
}				t_wolf;

typedef struct	s_iteration
{
	double		camera_x;
	double 		ray_dir_x;
	double 		ray_dir_y;
	int 		map_x;
	int 		map_y;
	double 		side_dist_x;
	double 		side_dist_y;
	double 		delta_dist_x;
	double 		delta_dist_y;
	double 		perp_wall_dist;
	int 		step_x;
	int 		step_y;
	int 		hit;
}				t_iterations;

bool	check_arguments(int ac, t_wolf *params);
int 	handle_error(t_wolf *params);
void 	init_parameters(t_wolf *params);
bool	read_map(t_wolf *params, char *input);
int 	handle_map_error(t_wolf *params);
bool	init_sdl(t_wolf *params);
void	init_position(t_wolf *params);
void	check_event(SDL_Event event, t_wolf *params);
void	make_calculations(t_wolf *params);
int 	height_for_column(int x, t_wolf *params);
void	route_events(SDL_Scancode code, t_wolf *params);

#endif
