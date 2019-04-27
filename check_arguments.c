//
// Created by Andrii Bodnar on 4/27/19.
//

#include "wolf3d.h"

bool	check_arguments(int ac, t_wolf *params)
{
	if (ac != 2)
	{
		params->error = ft_strdup("Usage: ./wolf3d <map_name>.w3d");
		return (0);
	}
	return (1);
}