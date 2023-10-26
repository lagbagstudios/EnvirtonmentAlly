extends PlayerState

func run(delta: float) -> String:
	input = get_input()
	if (input == Vector2.ZERO):
		return "idle"
	player.direction = input
	player.move()

	if (player.direction.x < 0):
		player.sprite.flip_h = false
	if (player.direction.x > 0):
		player.sprite.flip_h = true

	if (abs(player.velocity.x) > 0):
		player.animation_player.play("walk_h")
		player.facing = "horizontal"
	elif (player.velocity.y < 0.5):
		player.animation_player.play("walk_up")
		player.facing = "up"
	elif (player.velocity.y > 0.5):
		player.animation_player.play("walk_down")
		player.facing = "down"
	return super(delta)
