@icon("res://icons/link.svg")

extends Node

class_name Link

var rules: Array

@export var destination : State;

# Called when the node enters the scene tree for the first time.
func _ready():
	getRules();
	pass # Replace with function body.

func start():
	for rule in rules:
		rule.start()
	pass

func isValid():
	for rule in rules:
		if not rule.isValid():
			return false;
		
	return true;

func stop():
	for rule in rules:
		rule.stop()
	pass;

func getRules():
	for child in get_children():
		if child is Rule:
			rules.append(child);
	pass
