extends CharacterBody2D
class_name Player

@export var movement_speed = 25.0
@export_range(0, 1.0) var acceleration = 0.5

@onready var state_machine: StateMachine = $States
@onready var sprite: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var facing: String
var direction: Vector2

func move() -> void:
	velocity = direction * movement_speed

func _physics_process(delta):
	state_machine.run(delta)
	if (direction.x < 0):
		sprite.flip_h = false
	if (direction.x > 0):
		sprite.flip_h = true
	position += velocity * delta
	move_and_slide()
