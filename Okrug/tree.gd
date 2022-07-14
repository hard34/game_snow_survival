extends StaticBody2D
func _ready():
	randomize()
	var a = int(rand_range(1, 4))
	$Sprite.texture = load("res://Sprite/elka.png")
	pass
