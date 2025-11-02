extends CharacterBody2D

func _ready() -> void:
	GlobalVariables.xp = 0

func _process(delta: float) -> void:
	GlobalVariables.player_position = position
