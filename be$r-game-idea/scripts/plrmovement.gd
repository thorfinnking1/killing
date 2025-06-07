extends CharacterBody2D

@onready var ani: AnimationPlayer = $AnimationPlayer

const SPEED = 300.0
const JUMP_VELOCITY = -200.0

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
		ani.play("falling")

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("ui_left", "ui_right")
	if direction and is_on_floor():
		velocity.x = direction * SPEED
		ani.play("walkright")
		if direction>0:
			$Sprite2D.flip_h=false
			$Sprite2D/Sprite2D2.flip_h=false
		else:
			$Sprite2D.flip_h=true
			$Sprite2D/Sprite2D2.flip_h=true
	elif is_on_floor():
		ani.play("idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)
	else:
		ani.play("falling")

	move_and_slide()
