extends CharacterBody2D

var movement_speed = 10000

var movement_direction = Vector2.ZERO

var hurt_time = 1

var hurt_timer = 0

var hit = false

func _process(delta: float) -> void:
	movement_direction = (GlobalVariables.player_position-position).normalized()
	
	velocity = movement_direction * (movement_speed * delta)
	
	move_and_slide()
	
	hurt_timer += delta
	
	if hurt_timer >= hurt_time:
		hurt_timer = 0
	
		if hit:
			GlobalVariables.player_health -= 1


func _on_hurtbox_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		hit = true
		GlobalVariables.player_health -= 1
			


func _on_hurtbox_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		hit = false
		GlobalVariables.player_health -= 1
