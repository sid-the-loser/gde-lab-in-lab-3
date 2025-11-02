extends Node2D

var spawner_maximum_size = 1000
var spawn_time = 5
var var_spawn_time = 5

var spawn_timer = 0

var spawn_count = 1
var var_spawn_count = 1

const ENEMY = preload("uid://bfou2lahiqnvj")
const XP = preload("uid://dkyyjfb0v7sha")


func _process(delta: float) -> void:
	spawn_timer += delta
	
	if spawn_timer >= var_spawn_time:
		for i in range(int(round(var_spawn_count))):
			spawn()
		spawn_timer = 0
	
func spawn():
	var spawn_position = Vector2(randf_range(-spawner_maximum_size, 
									spawner_maximum_size) + (GlobalVariables.player_position.x-(spawner_maximum_size/2)),
								randf_range(-spawner_maximum_size, 
									spawner_maximum_size) + (GlobalVariables.player_position.y-(spawner_maximum_size/2)))
	
	var new_enemy = ENEMY.instantiate()
	
	get_parent().add_child(new_enemy)
	
	new_enemy.global_position = spawn_position
	
	spawn_position = Vector2(randf_range(-spawner_maximum_size, 
									spawner_maximum_size) + (GlobalVariables.player_position.x-(spawner_maximum_size/2)),
								randf_range(-spawner_maximum_size, 
									spawner_maximum_size) + (GlobalVariables.player_position.y-(spawner_maximum_size/2)))
	
	var new_xp = XP.instantiate()
	
	get_parent().add_child(new_xp)
	
	new_xp.global_position = spawn_position
	
	var_spawn_time = spawn_time - (spawn_time*(GlobalVariables.xp/100))
	var_spawn_count = spawn_count*(GlobalVariables.xp/100) + 1
