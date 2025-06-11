extends Area2D



func _on_body_entered(body):
	if Al.cat_food:
		$Enteract.visible = true


func _on_body_exited(body):
		$Enteract.visible = false
func _process(delta):
	if Input.is_action_just_pressed("e") and $Enteract.visible and Al.cat_food:
		$Sprite2D.visible = false
		$Sprite2D2.visible = true
		Al.cat_food = false
		Al.cat_interact = true
