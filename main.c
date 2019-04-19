
#include "wolf3d.h"

int		main(int ac, char **av) {

	bool		is_working = 1;
	SDL_Event	event;
	SDL_Window	*window = NULL;
	SDL_Surface	*screenSurface = NULL;

	if (SDL_Init(SDL_INIT_VIDEO) < 0)
		printf("SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
	else
	{
		window = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
		if (window == NULL)
			printf("Window could not be created! SDL_Error: %s\n", SDL_GetError());
		else
		{
			screenSurface = SDL_GetWindowSurface(window);
			SDL_FillRect(screenSurface, NULL, SDL_MapRGB(screenSurface->format, 0x7F, 0xFF, 0xFF));
			SDL_UpdateWindowSurface(window);
		}
	}
	while (is_working && SDL_WaitEvent(&event))
	{
		if ((event.type == SDL_QUIT) || (event.type == SDL_KEYDOWN
									 && event.key.keysym.scancode == SDL_SCANCODE_ESCAPE))
			is_working = 0;
		else if (event.type == SDL_KEYDOWN)
			ft_printf("Code = %d\n", event.key.keysym.scancode);
	}

	ft_printf("EXITING");
	return 0;
}
