extends Area2D

@export_file("*.tscn") var place:String

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("plr"):
		$Enteract.visible=true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("plr"):
		$Enteract.visible=false

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("e")and $Enteract.visible:
		Al.quest_start_1 = true
		get_tree().change_scene_to_file(place)
