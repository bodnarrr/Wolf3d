//
// Created by Andrii Bodnar on 2019-05-04.
//

#include "wolf3d.h"

void	set_wall_color(t_wolf *params, int value)
{
	if (value == 1)
		params->wall_color = INDIGO;
	else if (value == 2)
		params->wall_color = BARBERRY;
	else if (value == 3)
		params->wall_color = BLUEWHALE;
	else if (value == 4)
		params->wall_color = REDDEVIL;
	else if (value == 5)
		params->wall_color = REEF;
	else if (value == 6)
		params->wall_color = RIPTIDE;
	else if (value == 7)
		params->wall_color = SMOKY;
	else if (value == 8)
		params->wall_color = SORBUS;
	else
		params->wall_color = NIAGARA;
}
