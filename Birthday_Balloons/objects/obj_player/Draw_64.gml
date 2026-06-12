/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1E829D16
/// @DnDArgument : "color" "$FF14DBFF"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF14DBFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4C97C666
/// @DnDArgument : "x" "12"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" ""balloon: ""
draw_text(12, 50, string("balloon: ") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 6213E48F
/// @DnDArgument : "x" "80"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "spr_balloonsprite"
/// @DnDArgument : "number" "global.var_balloon"
/// @DnDSaveInfo : "sprite" "spr_balloonsprite"
var l6213E48F_0 = sprite_get_width(spr_balloonsprite);
var l6213E48F_1 = 0;
for(var l6213E48F_2 = global.var_balloon; l6213E48F_2 > 0; --l6213E48F_2) {
	draw_sprite(spr_balloonsprite, 0, 80 + l6213E48F_1, 35);
	l6213E48F_1 += l6213E48F_0;
}