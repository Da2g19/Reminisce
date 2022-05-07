/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3E147C6F
/// @DnDArgument : "key" "vk_right"
var l3E147C6F_0;
l3E147C6F_0 = keyboard_check(vk_right);
if (l3E147C6F_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24F2C98E
	/// @DnDParent : 3E147C6F
	/// @DnDArgument : "expr" "walksp"
	/// @DnDArgument : "var" "hsp"
	hsp = walksp;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4043A048
/// @DnDArgument : "key" "vk_left"
var l4043A048_0;
l4043A048_0 = keyboard_check(vk_left);
if (l4043A048_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35F84ABD
	/// @DnDParent : 4043A048
	/// @DnDArgument : "expr" "-walksp"
	/// @DnDArgument : "var" "hsp"
	hsp = -walksp;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 31692EFC
/// @DnDArgument : "key" "vk_down"
var l31692EFC_0;
l31692EFC_0 = keyboard_check(vk_down);
if (l31692EFC_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BFEF446
	/// @DnDParent : 31692EFC
	/// @DnDArgument : "expr" "walksp"
	/// @DnDArgument : "var" "vsp"
	vsp = walksp;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 55F851B1
/// @DnDArgument : "key" "vk_up"
var l55F851B1_0;
l55F851B1_0 = keyboard_check(vk_up);
if (l55F851B1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7530B390
	/// @DnDParent : 55F851B1
	/// @DnDArgument : "expr" "-walksp"
	/// @DnDArgument : "var" "vsp"
	vsp = -walksp;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B082A0
/// @DnDArgument : "expr" "hsp*drag"
/// @DnDArgument : "var" "hsp"
hsp = hsp*drag;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25B24080
/// @DnDArgument : "expr" "vsp*drag"
/// @DnDArgument : "var" "vsp"
vsp = vsp*drag;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6429FDA0
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "gravity"
/// @DnDArgument : "var" "vsp"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EED18B8
/// @DnDArgument : "var" "abs(hsp)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "0.2"
if(abs(hsp) < 0.2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A4AF77C
	/// @DnDParent : 5EED18B8
	/// @DnDArgument : "var" "hsp"
	hsp = 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 70BC0972
/// @DnDArgument : "x" "hsp"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "oSolid"
/// @DnDSaveInfo : "object" "oSolid"
var l70BC0972_0 = instance_place(x + hsp, y + 0, oSolid);
if ((l70BC0972_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70BD3C48
	/// @DnDParent : 70BC0972
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	var collide = false;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 197C1CDD
	/// @DnDParent : 70BC0972
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	while ((collide == false)) {
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 10CA97A3
		/// @DnDParent : 197C1CDD
		/// @DnDArgument : "x" "sign(hsp)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "oSolid"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "oSolid"
		var l10CA97A3_0 = instance_place(x + sign(hsp), y + 0, oSolid);
		if (!(l10CA97A3_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 045A7D2C
			/// @DnDParent : 10CA97A3
			/// @DnDArgument : "expr" "sign(hsp)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "x"
			x += sign(hsp);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4A338CAD
		/// @DnDParent : 197C1CDD
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E962A48
			/// @DnDParent : 4A338CAD
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "collide"
			collide = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 628455A4
			/// @DnDParent : 4A338CAD
			/// @DnDArgument : "var" "hsp"
			hsp = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7ACB0D03
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += hsp;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 38C34959
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vsp"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "oSolid"
/// @DnDSaveInfo : "object" "oSolid"
var l38C34959_0 = instance_place(x + 0, y + vsp, oSolid);
if ((l38C34959_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 517E4A0E
	/// @DnDParent : 38C34959
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	var collide = false;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 10A210A3
	/// @DnDParent : 38C34959
	/// @DnDArgument : "var" "collide"
	/// @DnDArgument : "value" "false"
	while ((collide == false)) {
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 28C6AD4E
		/// @DnDParent : 10A210A3
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "sign(vsp)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "oSolid"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "oSolid"
		var l28C6AD4E_0 = instance_place(x + 0, y + sign(vsp), oSolid);
		if (!(l28C6AD4E_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 578C90AE
			/// @DnDParent : 28C6AD4E
			/// @DnDArgument : "expr" "sign(vsp)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += sign(vsp);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 62157C54
		/// @DnDParent : 10A210A3
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 338D4BFB
			/// @DnDParent : 62157C54
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "collide"
			collide = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6DD3941B
			/// @DnDParent : 62157C54
			/// @DnDArgument : "var" "vsp"
			vsp = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 329E327A
/// @DnDArgument : "expr" "vsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += vsp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B538FBD
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "not" "1"
if(!(hsp == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17C63E99
	/// @DnDParent : 5B538FBD
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "moving"
	moving = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 425F8CC6
	/// @DnDParent : 5B538FBD
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "op" "2"
	if(hsp > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 717CD2B7
		/// @DnDParent : 425F8CC6
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79712F94
	/// @DnDParent : 5B538FBD
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 787ED32C
		/// @DnDParent : 79712F94
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 08CB0863
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DE1EEAC
	/// @DnDParent : 08CB0863
	/// @DnDArgument : "var" "moving"
	moving = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AE3C62F
/// @DnDArgument : "var" "moving"
/// @DnDArgument : "value" "1"
if(moving == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 268448ED
	/// @DnDParent : 5AE3C62F
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "sPlayerWalk"
	/// @DnDSaveInfo : "spriteind" "sPlayerWalk"
	sprite_index = sPlayerWalk;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 316B638F
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 687015D7
	/// @DnDParent : 316B638F
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "SPlayerIdle"
	/// @DnDSaveInfo : "spriteind" "SPlayerIdle"
	sprite_index = SPlayerIdle;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 43B91298
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "oLadder"
/// @DnDSaveInfo : "object" "oLadder"
var l43B91298_0 = instance_place(x + 0, y + 0, oLadder);
if ((l43B91298_0 > 0))
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2051EC64
	/// @DnDParent : 43B91298
	/// @DnDArgument : "key" "vk_up"
	var l2051EC64_0;
	l2051EC64_0 = keyboard_check(vk_up);
	if (l2051EC64_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0FA861A8
		/// @DnDParent : 2051EC64
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "SPlayerClimb"
		/// @DnDSaveInfo : "spriteind" "SPlayerClimb"
		sprite_index = SPlayerClimb;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 03BBA155
	/// @DnDParent : 43B91298
	/// @DnDArgument : "key" "vk_down"
	var l03BBA155_0;
	l03BBA155_0 = keyboard_check(vk_down);
	if (l03BBA155_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 05006144
		/// @DnDParent : 03BBA155
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "SPlayerClimb"
		/// @DnDSaveInfo : "spriteind" "SPlayerClimb"
		sprite_index = SPlayerClimb;
		image_index += 0;
	}
}