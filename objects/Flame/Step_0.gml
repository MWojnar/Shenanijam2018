/// @description Insert description here
// You can write your code in this editor


if (curr_rope_seg != noone) {
	var dir = point_direction(x, y, curr_rope_seg.x, curr_rope_seg.y);
	image_angle = dir + 90;
	var spd = 5;
	var dist = distance_to_point(curr_rope_seg.x, curr_rope_seg.y);
	var hsp = lengthdir_x(spd, dir);
	var vsp = lengthdir_y(spd, dir);
	x += hsp;
	y += vsp;
	if (dist < spd) {
	    var temp_rope = curr_rope_seg.next_rope;
		if (last_rope_seg != noone) {
			last_rope_seg.sprite_index = sprite3;
		}
		last_rope_seg = curr_rope_seg;
		curr_rope_seg = temp_rope;
	}
}