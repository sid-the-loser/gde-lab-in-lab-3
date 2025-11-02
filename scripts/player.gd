extends CharacterBody2D

signal health_updated(val: float)
signal xp_updated(val: float)

var movement_speed = 50000

var movement_direction = Vector2.ZERO

var past_health = 100
var past_xp = 0

func _ready() -> void:
	GlobalVariables.xp = 0

func _process(delta: float) -> void:
	movement_direction = Vector2(
		Input.get_action_strength("right")-Input.get_action_strength("left"),
		Input.get_action_strength("down")-Input.get_action_strength("up")
	)
	
	velocity = movement_direction * (movement_speed * delta)
	
	move_and_slide()
	
	GlobalVariables.player_position = position
	
	if past_health != GlobalVariables.player_health:
		past_health = GlobalVariables.player_health
		health_updated.emit(past_health)
		
	if past_xp != GlobalVariables.xp:
		past_xp = GlobalVariables.xp
		xp_updated.emit(past_xp)
