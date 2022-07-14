extends KinematicBody2D
var speed = 75

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
	
	
