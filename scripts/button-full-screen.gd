extends Button

func _ready():
	pressed.connect(buttonPressed)
	pass

func _process(delta):
	if Input.is_action_just_released("ui_escape"):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED);
	pass

func buttonPressed():
	if(DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED);
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN);
	pass
