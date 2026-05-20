// INPUT - DETECT CONTROL KEYS
// Checks both Arrow Keys and A/D keys
move_x = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")));
move_x *= move_speed;
var jump_pressed = keyboard_check_pressed(vk_space); // var makes this a local variable

// COLLISION CHECKS


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







   



