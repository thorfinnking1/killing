extends Button

@export_file("*tscn") var suckmy:String

func _pressed() -> void:
	Al.roomoutof=get_parent().name
	get_tree().change_scene_to_file(suckmy)
