/// @description Insert description here
// You can write your code in this editor


if (curr_rope_seg != noone) {
	var dir = point_direction(x, y, curr_rope_seg.x, curr_rope_seg.y);
	var spd = 5;
	var dist = distance_to_point(curr_rope_seg.x, curr_rope_seg.y);
	var hsp = lengthdir_x(spd, dir);
	var vsp = lengthdir_y(spd, dir);
	x += hsp;
	y += hsp;
	if (dist < spd) {
	    var temp_rope = curr_rope_seg.next_rope;
		instance_destroy(curr_rope_seg);
		curr_rope_seg = temp_rope;
	}
}