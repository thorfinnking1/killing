extends Label

var full_text := "the vision of a praised animal"
var reveal := 0.0
var speed := 5.0

func _process(delta):
	reveal = min(reveal + delta * speed, full_text.length())
	text = full_text.substr(0, int(reveal))
