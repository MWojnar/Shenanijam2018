/// @description Insert description here
// You can write your code in this editor

randomize();
flame = instance_create_layer(x - 60, y, "Instances", Flame);
next_point_x = x + 1200;
next_point_y = room_height / 4.0 + random(room_height / 2.0);
var last_rope = noone;
var first_rope_set = false;
var first_rope = noone;
var turn_limit = 10;
while (next_point_x < room_width) {
	var next_rope = instance_create_layer(x, y, "Instances", Rope_Segment);
	if (!first_rope_set) {
		first_rope_set = true;
		first_rope = next_rope;
	}
	next_rope.direction = direction;
	if (last_rope != noone) {
		last_rope.next_rope = next_rope;
	}
	last_rope = next_rope;
	x += lengthdir_x(120, direction);
	y += lengthdir_y(120, direction);
	dir_to_point = point_direction(x, y, next_point_x, next_point_y);
	var dir_right = true;
	if (dir_to_point - direction > 180 || (dir_to_point - direction > -180 && dir_to_point - direction < 0)) {
		dir_right = false;
	}
	dir_max = abs(dir_to_point - direction);
	dist = distance_to_point(next_point_x, next_point_y);
	dir_turn = dir_max * (120.0 / dist);
	if (dir_turn > turn_limit) {
		dir_turn = turn_limit;	
	}
	if (x > next_point_x) {
		next_point_x = x + 1200;
		next_point_y = room_height / 4.0 + random(room_height / 2.0);
	}
	if (dir_right) {
		direction += dir_turn;
	} else {
		direction -= dir_turn;
	}
}
flame.curr_rope_seg = first_rope;