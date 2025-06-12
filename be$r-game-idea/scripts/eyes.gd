extends Node2D


func _ready():
	if Al.take:
		$Control/Eye.visible = true
