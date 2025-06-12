extends Node2D

@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start(0.5)
	await timer.timeout
	get_tree().quit()
