extends Node2D

func _process(delta: float) -> void:
	set_position(position.lerp(GlobalVariables.player_position, delta))


func _on_area_2d_body_entered(body: Node2D) -> void:
	GlobalVariables.xp += 1
	queue_free()
