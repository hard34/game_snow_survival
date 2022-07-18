extends Node2D

onready var item = preload("res://Scenes/item.tscn") 

func get_player():
	return $Player

func _ready():
	var items = [["stick1", 10], ["stone", 6]]
	for i in range(20):
		randomize()
		var generation_choice = int(rand_range(0,2))
		var new_item = item.instance()
		$items.add_child(new_item)
		new_item.set_item(items[generation_choice])
		new_item.position = Vector2(int(rand_range(0,16*29)), int(rand_range(0,16*14))) 
	pass 
