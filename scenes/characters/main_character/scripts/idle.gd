extends PlayerState

# IDLE

func run(delta: float) -> String:
	if (get_input() != Vector2.ZERO):
		return "walk"
	player.velocity = player.velocity.lerp(Vector2.ZERO, delta * player.movement_speed)
	if (player.facing == "up"):
		player.animation_player.play("idle_up")
	elif (player.facing == "down"):
		player.animation_player.play("idle_down")
	else:
		player.animation_player.play("idle_h")
	return super(delta)
