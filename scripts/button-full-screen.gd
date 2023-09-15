extends Button

func _ready():
	pressed.connect(buttonPressed)
	pass

func buttonPressed():
	print("Hello world!")
	if(DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED);
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN);
	pass
