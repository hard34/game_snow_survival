extends Node2D

var item = ""
var amount = 1
var limit = 10

func set_item(properties):
	$Sprite.texture = load("res://items/%s.png" % properties[0])
	item = properties[0]
	limit = properties[1]

func _ready():
	pass 

func get_item():
	return item

func get_amount():
	return amount
	
func get_item_stack():
	return limit

func _input(event):
	if event.is_action_pressed("ui_select"):
		var pl = get_parent().get_parent().get_player()
		if abs(pl.position.x - position.x) <16 and abs(pl.position.y - position.y) <16:
			get_parent().remove_child(self)
			pl.pick(self)
