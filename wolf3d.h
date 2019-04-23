
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

typedef struct	s_wolf
{
	t_sdl		sdl;
	int 		**map;
	int 		map_height;
	int 		map_width;
	bool		is_working;
	char 		*error;
}				t_wolf;

void 	init_parameters(t_wolf *params);
bool	read_map(t_wolf *params, char *input);
int 	handle_map_error(t_wolf *params);
int 	handle_args_error();

#endif