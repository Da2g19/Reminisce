/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DB42799
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4AA496F8
	/// @DnDParent : 3DB42799
	/// @DnDArgument : "value" "0.02"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "13"
	image_alpha += 0.02;
}