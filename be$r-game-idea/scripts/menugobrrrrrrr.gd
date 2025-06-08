extends Control

@onready var tip_2: Marker2D = $portal/Port1/Skeleton2D2/Bone2D/Bone2D2/tip2
@onready var ohmyi_imeaneye: Sprite2D = $portal/OhmyiImeaneye

@onready var tip: Marker2D = $Skeleton2D/Bone2D/Bone2D2/tip
@onready var targ: Marker2D = $targ
@onready var portal: Node2D = $portal

@onready var eeeeye: Sprite2D = $portal/Eeeeye
@onready var remote: RemoteTransform2D = $portal/Port1/Skeleton2D3/Bone2D/Bone2D2/tip/RemoteTransform2D

func _process(_delta: float) -> void:
	targ.global_position+=(get_global_mouse_position()-targ.global_position)*0.1
	portal.global_position=tip.global_position
	eeeeye.global_position=remote.global_position
	ohmyi_imeaneye.global_position=tip_2.global_position

func _on_timer_timeout() -> void:
	randomize()
	var rand=randi_range(0,4)
	$obj.get_child(rand).visible=true
	$AnimationPlayer2.play("portals")

func _on_button_mouse_entered() -> void:
	$AnimationPlayer3.play("big1")

func _on_button_mouse_exited() -> void:
	$AnimationPlayer3.play_backwards("big1")
