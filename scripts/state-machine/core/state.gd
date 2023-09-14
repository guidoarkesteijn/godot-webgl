@icon("res://icons/workflow.svg")

extends Node

class_name State

var actions: Array
var rules: Array

func _ready():
	getActions();
	pass

func enter():
	for action in actions:
		action.start();
	for rule in rules:
		if rule != null:
			rule.start();
	pass

func update(delta):
	for action in actions:
		action.update(delta);
	pass
	
func check():
	for rule in rules:
		if rule.isValid():
			return rule.destination
	return null;

func exit():
	for action in actions:
		action.stop();
	pass

func getActions():
	for child in get_children():
		if child is Action:
			actions.append(child);
		if child is Link:
			rules.append(child);
	pass
