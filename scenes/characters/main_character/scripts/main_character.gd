extends CharacterBody2D
class_name Player

@export var movement_speed = 10.0

@onready var state_machine: StateMachine = $States

func move(direction: Vector2) -> void:
	velocity = direction * movement_speed
	move_and_slide()

func _physics_process(delta):
	state_machine.run(delta)
