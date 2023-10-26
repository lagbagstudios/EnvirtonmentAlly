extends CharacterBody2D
class_name Player

@export var movement_speed = 25.0

@onready var state_machine: StateMachine = $States
@onready var sprite: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var facing: String
var direction: Vector2

func move() -> void:
	velocity = direction * movement_speed

func _physics_process(delta):
	state_machine.run(delta)
	position += velocity * delta
	move_and_slide()
