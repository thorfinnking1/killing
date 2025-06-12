extends Node2D

func _ready():
	if Al.cat_interact:
		$Cat2.visible = false
		$Cat1.visible = true
		$Catbowl1/Sprite2D.visible = true
		$Catbowl1/Sprite2D2.visible = false
		Al.go_back_bitch = true
