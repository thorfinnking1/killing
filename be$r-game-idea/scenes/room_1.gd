extends Node2D

@onready var tp: Node2D = $tp
@onready var plr: CharacterBody2D = $CharacterBody2D

func _process(delta):
	if Al.cat_interact:
		Al.cat_alive = false

func _ready() -> void:
	for i in tp.get_child_count():
		if tp.get_child(i).name==Al.roomoutof:
			plr.global_position=tp.get_child(i).global_position
