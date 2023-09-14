extends Action

class_name AnimateAction

@export var animation : AnimationPlayer;

func _ready():
	animation.play("lapbar-closed")
	pass

func start():
	animation.play("lapbar-open")
	pass

func stop():
	animation.play_backwards("lapbar-open");
	pass
