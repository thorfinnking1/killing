extends Node2D

func _process(delta):
	if Al.cat_alive:
		Al.quest_start_1 = true
	if Al.cat_interact:
		Al.cat_alive = false
