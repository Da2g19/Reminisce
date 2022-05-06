/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 537EC30C
/// @DnDArgument : "expr" "walksp * facing"
/// @DnDArgument : "var" "hsp"
hsp = walksp * facing;

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
/// @DnDArgument : "object" "oEnemBound"
/// @DnDSaveInfo : "object" "oEnemBound"
var l70BC0972_0 = instance_place(x + hsp, y + 0, oEnemBound);
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
		/// @DnDArgument : "object" "oEnemBound"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "oEnemBound"
		var l10CA97A3_0 = instance_place(x + sign(hsp), y + 0, oEnemBound);
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
	/// @DnDInput : 2
	/// @DnDParent : 08CB0863
	/// @DnDArgument : "expr_1" "facing * -1"
	/// @DnDArgument : "var" "moving"
	/// @DnDArgument : "var_1" "facing"
	moving = 0;
	facing = facing * -1;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5DD5FBAE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "oPlayer"
/// @DnDSaveInfo : "object" "oPlayer"
var l5DD5FBAE_0 = instance_place(x + 0, y + 0, oPlayer);
if ((l5DD5FBAE_0 > 0))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 34986280
	/// @DnDParent : 5DD5FBAE
	/// @DnDArgument : "msg" ""dog got you""
	show_debug_message(string("dog got you"));
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 249BB550
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "oPlayer"
/// @DnDSaveInfo : "object" "oPlayer"
var l249BB550_0 = instance_place(x + 100, y + 0, oPlayer);
if ((l249BB550_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E6A0A0E
	/// @DnDParent : 249BB550
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "facing"
	facing = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1917EF49
	/// @DnDParent : 249BB550
	/// @DnDArgument : "expr" "6"
	/// @DnDArgument : "var" "walksp"
	walksp = 6;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7BCC55B3
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1FD5B614
	/// @DnDParent : 7BCC55B3
	/// @DnDArgument : "x" "-100"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "oPlayer"
	/// @DnDArgument : "aslist" "1"
	/// @DnDSaveInfo : "object" "oPlayer"
	var l1FD5B614_0 = ds_list_create();
	var l1FD5B614_1 = instance_place_list(x + -100, y + 0, oPlayer, l1FD5B614_0, true);
	ds_list_destroy(l1FD5B614_0);
	if ((l1FD5B614_1 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68BA330A
		/// @DnDParent : 1FD5B614
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73D2D86E
		/// @DnDParent : 1FD5B614
		/// @DnDArgument : "expr" "6"
		/// @DnDArgument : "var" "walksp"
		walksp = 6;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 58F2707C
	/// @DnDParent : 7BCC55B3
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A4FF94E
		/// @DnDParent : 58F2707C
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "var" "walksp"
		walksp = 4;
	}
}