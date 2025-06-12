extends Node2D

func _ready():
	if Al.take:
		$Eye.visible = true
