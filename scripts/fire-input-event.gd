extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(buttonPressed);
	pass # Replace with function body.

func buttonPressed():
	Input.action_press("lapbar");
	Input.action_release("lapbar");
	pass
