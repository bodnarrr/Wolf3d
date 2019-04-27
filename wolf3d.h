
#ifndef WOLF3D_H
# define WOLF3D_H

# include "libftprintf/libftprintf.h"
# include "/usr/local/Cellar/sdl2/2.0.9_1/include/SDL2/SDL.h"
# include "/usr/local/Cellar/sdl2/2.0.9_1/include/SDL2/SDL_events.h"
# include <stdbool.h>

# define SCREEN_WIDTH 800
# define SCREEN_HEIGHT 600
# define MOCK_MAP_WIDTH 10
# define MOCK_MAP_HEIGHT 10

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
	double 		camera_x;
	double 		ray_dir_x;
	double 		ray_dir_y;
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
}				t_wolf;

bool	check_arguments(int ac, t_wolf *params);
int 	handle_error(t_wolf *params);
void 	init_parameters(t_wolf *params);
bool	read_map(t_wolf *params, char *input);
int 	handle_map_error(t_wolf *params);
bool	init_sdl(t_wolf *params);
void	init_position(t_wolf *params);
void	check_event(SDL_Event event, t_wolf *params);
void	make_calculations(t_wolf *params);

#endif