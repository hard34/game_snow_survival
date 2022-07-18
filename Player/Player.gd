extends KinematicBody2D

onready var ui = get_viewport().get_node("Root/UI/Control")

var speed = 75
var items = 0
var inventory = {}

func _ready():
	pass

func pick(item):
	var it = item.get_item()
	if it in inventory.keys():
		inventory[it][0] += item.get_amount()
	else:
		inventory[it] = [item.get_amount(), item.get_item_stack()]
	ui.update_inventory(inventory)

func _process(delta):
	var position = Vector2()
	if Input.is_action_pressed("up"):
		$AnimatedSprite.play("run")
		position.y -= speed
	if Input.is_action_pressed("down"):
		$AnimatedSprite.play("run")
		position.y += speed
	if Input.is_action_pressed("left"):
		position.x -= speed
		$AnimatedSprite.play("run")
	if Input.is_action_pressed("right"):
		position.x += speed
		$AnimatedSprite.play("run")
	if position.x > 0:
		$AnimatedSprite.flip_h = false
	elif position.x < 0:
		$AnimatedSprite.flip_h = true
	elif position.y > 0:
		pass
	elif position.y < 0:
		pass
	else:
		$AnimatedSprite.play("stay")
	move_and_slide(position)
	
func _unhandled_input(event):
	if event.is_action_pressed("inventory"):
		ui.toggle_inventory(inventory)
	
