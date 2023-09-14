@icon("res://icons/brain.svg")

extends Node

class_name StateMachine

var states: Array
var state: State;

# Called when the node enters the scene tree for the first time.
func _ready():
	getStates();
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if state != null:
		state.update(delta)
		var newState : State = state.check();
		
		if newState != null :
			setState(newState)
	pass

func getStates():
	for child in get_children():
		if child is State:
			states.append(child);
			if self.state == null:
				setState(child)
	pass

func setState(newState: State):
	if state != null:
		state.exit();
	
	state = newState;
	state.enter();
	pass
