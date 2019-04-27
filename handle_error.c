//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

int 		handle_error(t_wolf *params)
{
	int 	i;

	ft_printf("%s\n", params->error);
	ft_strdel(&params->error);
	if (params->did_read_map)
	{
		i = -1;
		while (++i < params->map_height)
			ft_strdel((char**)&params->map[i]);
		ft_strdel((char**)&params->map);
	}
	return (1);
}