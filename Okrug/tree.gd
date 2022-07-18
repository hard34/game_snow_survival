extends StaticBody2D
func _ready():
	randomize()
	var a = int(rand_range(1, 4))
	$Sprite.texture = load("res://Sprites/elka.png")
	pass
