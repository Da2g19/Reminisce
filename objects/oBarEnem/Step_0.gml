hsp = walksp * facing;

hsp = hsp*drag;

if(abs(hsp) < 0.2)
{
	hsp = 0;
}

var l70BC0972_0 = instance_place(x + hsp, y + 0, oEnemBound);
if ((l70BC0972_0 > 0))
{
	var collide = false;

	while ((collide == false)) {
		var l10CA97A3_0 = instance_place(x + sign(hsp), y + 0, oEnemBound);
		if (!(l10CA97A3_0 > 0))
		{
			x += sign(hsp);
		}
	
		else
		{
			collide = true;
		
			hsp = 0;
		}
	}
}

x += hsp;

if(!(hsp == 0))
{
	moving = 1;

	if(hsp > 0)
	{
		facing = 1;
	}

	else
	{
		facing = -1;
	}
}

else
{
	moving = 0;
	facing = facing * -1;
}

var l5DD5FBAE_0 = instance_place(x + 0, y + 0, oRat);
if ((l5DD5FBAE_0 > 0))
{
	if(!(global.hidden == true))
	{
	
	
		room_restart();
	}
}