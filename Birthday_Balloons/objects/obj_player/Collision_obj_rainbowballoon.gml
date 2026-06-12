/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7ED525A7
/// @DnDArgument : "soundid" "hitnail"
/// @DnDSaveInfo : "soundid" "hitnail"
audio_play_sound(hitnail, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0221083E
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.var_balloon"
global.var_balloon += -1;