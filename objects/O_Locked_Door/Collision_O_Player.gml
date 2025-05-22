if O_Key_Manager.key_amount > 0{
	O_Key_Manager.key_amount -= 1;
	instance_destroy();
}
else{
	show_key = true;
}