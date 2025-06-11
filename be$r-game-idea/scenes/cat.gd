extends Area2D


func _on_body_entered(body):
	if !Al.take:
		$"../Enteract".visible = true


func _on_body_exited(body):
	$"../Enteract".visible = false

func _process(delta):
	if Input.is_action_just_pressed("e") and $"../Enteract".visible:
		Al.take = true
