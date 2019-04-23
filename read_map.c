//
// Created by Andrii Bodnar on 4/24/19.
//

#include "wolf3d.h"

bool	read_map(t_wolf *params, char *input)
{
	int 	fd;
	int 	i;
	int 	j;

	fd = open(input, O_RDONLY);
	if (fd < 0)
	{
		params->error = ft_strdup("Read map error text");
		return (0);
	}

	params->map = (int**)ft_memalloc(sizeof(int*) * params->map_height);
	i = -1;
	while (++i < params->map_height)
		params->map[i] = (int*)ft_memalloc(sizeof(int) * params->map_width);
	i = -1;
	while (++i < params->map_height)
	{
		j = -1;
		while (++j < params->map_width)
			ft_printf("%d ", params->map[i][j]);
		ft_printf("\n");
	}
	close(fd);
	return (1);
}

