//
// Created by Andrii Bodnar on 2019-05-04.
//

#include "wolf3d.h"

void	add_perimeter_walls(int **map)
{
	int	i;
	int	j;

	i = -1;
	while (map[++i])
	{
		j = -1;
		while (map[i][++j] != -1)
			if (i == 0 || map[i + 1] == NULL || j == 0 || map[i][j + 1] == -1)
				map[i][j] = 1;
	}
}