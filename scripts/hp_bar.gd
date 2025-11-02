extends ProgressBar

func _ready() -> void:
	value = 100



func _on_player_health_updated(val: float) -> void:
	value = val
