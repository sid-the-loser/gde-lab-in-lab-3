extends Node

var player_position = Vector2.ZERO
var player_health = 100

var xp = 0

func _process(delta: float) -> void:
	if Input.is_action_pressed("quit"):
		get_tree().quit()
		
	if player_health <= 0:
		player_health = 100
		xp = 0
		get_tree().change_scene_to_file("res://scenes/death.tscn")
