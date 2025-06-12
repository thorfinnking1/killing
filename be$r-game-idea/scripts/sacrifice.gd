extends Sprite2D


func _on_button_4_pressed():
	if $"../Control/Eye".visible:
		$".".visible= false
		$"../Port2".visible = true
		$"../Control/Eye".visible = false
		Al.take = false
