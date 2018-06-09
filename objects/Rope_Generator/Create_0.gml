/// @description Insert description here
// You can write your code in this editor

flame = instance_create_layer(x - 60, y, "Instances", Flame);
rope1 = instance_create_layer(x, y, "Instances", Rope_Segment);
var cur_x = x + 120;
var cur_y = y;
rope2 = instance_create_layer(cur_x, cur_y, "Instances", Rope_Segment);
rope2.direction = 45;
cur_x += lengthdir_x(120, 45);
cur_y += lengthdir_y(120, 45);
rope3 = instance_create_layer(cur_x, cur_y, "Instances", Rope_Segment);
rope3.direction = -45;
cur_x += lengthdir_x(120, -45);
cur_y += lengthdir_y(120, -45);
rope4 = instance_create_layer(cur_x, cur_y, "Instances", Rope_Segment);
cur_x += 120;
rope5 = instance_create_layer(cur_x, cur_y, "Instances", Rope_Segment);
rope1.next_rope = rope2;
rope2.next_rope = rope3;
rope3.next_rope = rope4;
rope4.next_rope = rope5;
rope5.next_rope = noone;
flame.curr_rope_seg = rope1;