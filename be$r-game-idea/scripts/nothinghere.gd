extends Node2D

@export_file("*.tscn") var place:String

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file(place)
