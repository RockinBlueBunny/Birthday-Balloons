// INPUT - DETECT CONTROL KEYS
// Checks both Arrow Keys and A/D keys
move_x = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
move_x *= move_speed;
var jump_pressed = keyboard_check_pressed(vk_space); // var makes this a local variable


// Check if standing on the ground
is_grounded = place_meeting(x, y+2, ground_object);
is_ceiling = place_meeting(x, y-2, ground_object);

// MOVEMENT - ACTUALLY MOVE PIXELS
// Climbing
if (is_climbing) {
    // Checks both Arrow Keys and W/S keys
    move_y = (keyboard_check(vk_down) || keyboard_check(ord("S"))) - (keyboard_check(vk_up) || keyboard_check(ord("W")));
    move_y *= climb_speed;
}
else {
    // Gravity & Jumping
    if (is_grounded && jump_pressed) {
        move_y = jump_speed;
    }
    // Falling
    else if (move_y < max_fall_speed) { // make sure it doesn't fall too fast
        move_y += gravity_force; // if falling, move at gravity acceleration
    }
}
// MOVE THE PLAYER
move_and_collide(move_x, move_y, ground_object); // the one line that actually moves the object

if (place_meeting(x, y, ground_object))
{
    show_debug_message("Inside ground!");
}
// ##################### AVOID STICKING TO THE BOTTOM OF PLATFORMS #####################
if (is_ceiling) { // If hitting ceiling (platform above), move back down
	if (move_y < 0) {
		move_y = 0;	
	}
}
if (keyboard_check(ord("D")))
{
    sprite_index = spr_boyrunright;
}
else if (keyboard_check(ord("A")))
{
    sprite_index = spr_boyrunleft;
}
else
{
    // Idle sprite based on last facing direction
    if (image_xscale == 1)
    {
        sprite_index = spr_boyidleright;
    }
    else
    {
        sprite_index = spr_boyidleleft;
    }
}
if (keyboard_check(ord("D")))
{
    facing = 1;
    sprite_index = spr_boyrunright;
}
else if (keyboard_check(ord("A")))
{
    facing = -1;
    sprite_index = spr_boyrunleft;
}
else
{
    if (facing == 1)
        sprite_index = spr_boyidleright;
    else
        sprite_index = spr_boyidleleft;
}
if (place_meeting(x, y, obj_balloon)) {
    got_balloon = true;

    var myinstance = instance_place(x, y, obj_balloon);
    if (myinstance != noone) {
        instance_destroy(myinstance);
    }

    //make gravity stronger
    gravity_force -= 0.08;

    //slow falling
    max_fall_speed -= 0.7;
	
	//jump speed
	jump_speed -= 1
	
}
/// STEP EVENT

// ---------------- APPLY GRAVITY ----------------
if (!is_climbing) {
    move_y += gravity_force;
    if (move_y > max_fall_speed) {
        move_y = max_fall_speed;
    }
}

// ---------------- HORIZONTAL MOVEMENT ----------------
if (move_x != 0) {
    var sign_h = sign(move_x);
    repeat (abs(move_x)) {
        if (!place_meeting(x + sign_h, y, ground_object)) {
            x += sign_h;
        } else {
            move_x = 0; // stop at wall
            break;
        }
    }
}

// ---------------- VERTICAL MOVEMENT ----------------
is_grounded = false;
if (move_y != 0) {
    var sign_v = sign(move_y);
    repeat (abs(move_y)) {
        if (!place_meeting(x, y + sign_v, ground_object)) {
            y += sign_v;
        } else {
            if (sign_v > 0) is_grounded = true; // landed
            move_y = 0; // stop vertical movement
            break;
        }
    }
}
// make player jumpower worse
if (place_meeting(x, y, obj_nail)) {
   got_obj_nail = true;

    var myinstance = instance_place(x, y, obj_nail);
    if (myinstance != noone) {
        instance_destroy(myinstance);
    }

    //make gravity stronger
    gravity_force += 0.05;

    //slow falling
    max_fall_speed += 0.5;
	
	//jump speed
	jump_speed += 1
	
}
if (place_meeting(x, y, obj_laserright)) {
   got_obj_laserright = true;

    var myinstance = instance_place(x, y, obj_laserright);
    if (myinstance != noone) {
        instance_destroy(myinstance);
    }

    //make gravity stronger
    gravity_force += 0.05;

    //slow falling
    max_fall_speed += 0.5;
	
	//jump speed
	jump_speed += 1
	
}
if (place_meeting(x, y, obj_laser)) {
   got_obj_laser = true;

    var myinstance = instance_place(x, y, obj_laser);
    if (myinstance != noone) {
        instance_destroy(myinstance);
    }

    //make gravity stronger
    gravity_force += 0.05;

    //slow falling
    max_fall_speed += 0.5;
	
	//jump speed
	jump_speed += 1
	
}
if (place_meeting(x, y, obj_rainbowballoon)) {
   got_obj_rainbowballoon = true;

    var myinstance = instance_place(x, y, obj_rainbowballoon);
    if (myinstance != noone) {
        instance_destroy(myinstance);
    }

    //make gravity stronger
    gravity_force += 0.05;

    //slow falling
    max_fall_speed += 0.5;
	
	//jump speed
	jump_speed += 1
}
if (keyboard_check(ord("D")))
{
    sprite_index = spr_boyrunright;
}
else if (keyboard_check(ord("A")))
{
    sprite_index = spr_boyrunleft;
}
else
{
    // Idle sprite based on last facing direction
    if (image_xscale == 1)
    {
        sprite_index = spr_boyidleright;
    }
    else
    {
        sprite_index = spr_boyidleleft;
    }
}
if (keyboard_check(ord("D")))
{
    facing = 1;
    sprite_index = spr_boyrunright;
}
else if (keyboard_check(ord("A")))
{
    facing = -1;
    sprite_index = spr_boyrunleft;
}
else
{
    if (facing == 1)
        sprite_index = spr_boyidleright;
    else
        sprite_index = spr_boyidleleft;
}