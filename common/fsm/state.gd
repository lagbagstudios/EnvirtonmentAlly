extends Node
class_name State

@export var tag: String

func _ready() -> void:
	assert(tag != null && tag != "", "State Tag cannot be null or empty")

func run(_delta: float) -> String:
	return ""

func enter(_previous: String) -> void:
	print_debug("In state: ", tag, ", From state: ", _previous)

func exit() -> void:
	pass
