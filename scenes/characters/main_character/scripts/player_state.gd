extends State
class_name PlayerState

var player: Player
var input: Vector2 = Vector2.ZERO

func _ready() -> void:
	await(owner.ready)
	player = owner as Player
	assert(player != null)
	super()

func get_input() -> Vector2:
	return Input.get_vector("move_left", "move_right", "move_up", "move_down")
