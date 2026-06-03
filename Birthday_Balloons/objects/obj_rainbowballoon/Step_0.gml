/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 43691A8C
/// @DnDArgument : "speed" "7"
speed = 7;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 19C38FAD
/// @DnDArgument : "direction" "180"
direction = choose(180);

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 38BF1FAF
/// @DnDArgument : "margin" "1"
/// @DnDArgument : "ver" "0"
move_wrap(1, 0, 1);