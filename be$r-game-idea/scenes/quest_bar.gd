extends Label

@onready var ani :  = $"../AnimationPlayer"
var n = 1

func _process(delta):
	match n:
		1:
			if !Al.quest_start_1:
				ani.play("quest_1")
			elif Al.quest_start_1 and !Al.cat_food and Al.cat_alive:
				ani.play("quest_start_1")
			n+=1
		2:
			if Al.cat_food:
				ani.play("feed cat")
				n+=1
			if n == 2 and Al.take:
				ani.play("sacrafice")
				n = 0
		3:
			if Al.cat_interact:
				ani.play("leave Now")
				n+=1
				Al.m+=1
	match Al.m:
		1:
			if !Al.cat_alive:
				ani.play("take")
				Al.m +=1
		2:
			if Al.go_back_bitch:
				ani.play("take")
				Al.m+=1
