//
// Created by Andrii Bodnar on 4/24/19.
//

#include "wolf3d.h"

int 	handle_map_error(t_wolf *params)
{
	ft_printf("Error on map reading: %s\n", params->error);
	ft_strdel(&params->error);
	return (1);
}

