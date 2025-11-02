extends Node2D

var spawner_maximum_size = 100
var spawn_time = 5

var spawn_timer = 0

const ENEMY = preload("uid://bfou2lahiqnvj")

func _process(delta: float) -> void:
	spawn_timer += delta
	
	if spawn_timer >= spawn_time:
		spawn()
		spawn_timer = 0
	
func spawn():
	var spawn_position = Vector2(randf_range(-spawner_maximum_size, 
									spawner_maximum_size) + GlobalVariables.player_position.x,
								randf_range(-spawner_maximum_size, 
									spawner_maximum_size) + GlobalVariables.player_position.y)
	
	var new_enemy = ENEMY.instantiate()
	
	get_parent().add_child(new_enemy)
	
	new_enemy.global_position = spawn_position
