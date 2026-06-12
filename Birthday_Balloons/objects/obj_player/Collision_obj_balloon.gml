/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6DE47B25
/// @DnDArgument : "soundid" "correct"
/// @DnDSaveInfo : "soundid" "correct"
audio_play_sound(correct, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B1F05D3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.var_balloon"
global.var_balloon += 1;