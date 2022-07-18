extends TextureRect

func set_item(iname, amount):
	texture = load("res://items/%s.png" % iname)
	$Label.text = str(amount)
