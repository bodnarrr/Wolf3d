//
// Created by Andrii Bodnar on 2019-05-04.
//

#include "libft.h"

char *ft_strsub_chr(char *source, char symbol)
{
	int		i;
	char 	*res;

	i = 0;
	
	//
	// CRASH!
	//

	while (source[i] != symbol)
		i++;
	res = (char*)ft_memalloc(sizeof(char) * (i + 1));
	ft_strncpy(res, source, i);
	return (res);
}