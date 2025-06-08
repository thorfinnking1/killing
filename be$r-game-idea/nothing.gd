extends Node2D

func _process(_delta: float) -> void:
	$OhmyiImeaneye.global_position+=(get_global_mouse_position()-$OhmyiImeaneye.global_position)*0.1 
