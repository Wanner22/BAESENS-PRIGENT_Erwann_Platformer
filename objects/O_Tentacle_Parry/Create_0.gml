/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
spark = instance_create_layer(x, y, "Effects", O_Red_Spark_Infinite);
spark.image_xscale = 2;
spark.image_yscale = 2;
with(O_Boss){
	alarm_set(3, 800);
}