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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B082A0
/// @DnDArgument : "expr" "hsp*drag"
/// @DnDArgument : "var" "hsp"
hsp = hsp*drag;

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
	/// @DnDArgument : "spriteind" "sRat"
	/// @DnDSaveInfo : "spriteind" "sRat"
	sprite_index = sRat;
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
	/// @DnDArgument : "spriteind" "sRat"
	/// @DnDSaveInfo : "spriteind" "sRat"
	sprite_index = sRat;
	image_index += 0;
}