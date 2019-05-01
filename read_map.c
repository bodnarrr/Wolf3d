/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   read_map.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abodnar <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 17:46:25 by abodnar           #+#    #+#             */
/*   Updated: 2019/05/01 17:46:26 by abodnar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
		return (FALSE);
	}

	params->map = (int**)ft_memalloc(sizeof(int*) * params->map_height);
	i = -1;
	while (++i < params->map_height)
		params->map[i] = (int*)ft_memalloc(sizeof(int) * params->map_width);
	i = -1;
	/*
	 * Just for a test
	 * Remove when map reading will be ready
	 */
	while (++i < params->map_height)
	{
		j = -1;
		while (++j < params->map_width)
			params->map[i][j] = (i == 0 || j == 0 || i == j) ? 1 : 0;
	}
	i = -1;
	while (++i < params->map_height)
	{
		j = -1;
		while (++j < params->map_width)
			ft_printf("%d ", params->map[i][j]);
		ft_printf("\n");
	}
//	params->did_read_map = 1;
	close(fd);
	return (TRUE);
}

