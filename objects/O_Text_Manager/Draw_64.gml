if show_text {
	Sc_Draw_Text(text);
	if alarm_get(0) <= 0 alarm_set(0, 240);
}