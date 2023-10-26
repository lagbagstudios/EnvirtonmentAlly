extends Node
class_name State

@export var tag: String

func _ready() -> void:
	assert(tag != null)

func run(_delta: float) -> String:
	return ""

func enter(_previous: String) -> void:
	print("In state: ", tag, ", From state: ", _previous)

func exit() -> void:
	pass
