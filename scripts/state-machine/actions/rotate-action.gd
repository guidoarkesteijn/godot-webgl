extends Action

class_name RotateAction

@export var element : Node3D

func update(delta):
	element.rotate(Vector3.UP, delta);
	pass
