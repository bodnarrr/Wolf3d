/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   route_events.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abodnar <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 18:03:57 by abodnar           #+#    #+#             */
/*   Updated: 2019/05/01 18:03:58 by abodnar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "wolf3d.h"

static void	rotate(bool is_right, t_wolf *params)
{

	if (is_right)
		ft_printf("~~~> RIGHT <~~~\n");
	else
		ft_printf("~~~> LEFT <~~~\n");
}

static void	move(bool is_move_forward, t_wolf *params)
{

	if (is_move_forward)
		ft_printf("~~~> UP <~~~\n");
	else
		ft_printf("~~~> DOWN <~~~\n");
}

void	route_events(SDL_Scancode code, t_wolf *params)
{
	if (code == SDL_SCANCODE_UP)
		move(TRUE, params);
	else if (code == SDL_SCANCODE_DOWN)
		move(FALSE, params);
	else if (code == SDL_SCANCODE_LEFT)
		rotate(FALSE, params);
	else if (code == SDL_SCANCODE_RIGHT)
		rotate(TRUE, params);

}
