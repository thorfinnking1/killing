extends Area2D

var n = 0
func _on_body_entered(body):
	if Al.n==0:
		$Sprite2D.visible = true


func _on_body_exited(body):
	$Sprite2D.visible = false

func _process(delta):
	if Input.is_action_just_pressed("e") and $Sprite2D.visible:
		Al.cat_food = true
		Al.n +=1
		
