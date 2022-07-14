extends Camera2D

onready var antizoommax = 1
onready var zoomspeed = 15
onready var zoomstep = 0.03
onready var factorstep = 0.01


func _ready():
	pass 

func _process(delta):
	zoom.x = lerp(zoom.x, antizoommax * zoom.x, zoomspeed * delta)
	zoom.y = lerp(zoom.y, antizoommax * zoom.y, zoomspeed * delta)
	
	zoom.x = clamp(zoom.x, 0.6, 1)
	zoom.y = clamp(zoom.y, 0.6, 1)
	
	if antizoommax > 1:
		antizoommax -= factorstep
	elif antizoommax < 1:
		antizoommax += factorstep
	
func _input(event):
	
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP:
			antizoommax -= zoomstep
			
		elif event.button_index == BUTTON_WHEEL_DOWN:
			antizoommax += zoomstep
