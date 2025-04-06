extends Control

var is_open = false

# Called when the node enters the scene tree for the first time.
func _ready():
	close()
	
func _process(delta):
	if Input.is_action_just_pressed("inventory"):
		if is_open:
			close()
		else:
			open()
	
	
func open():
	visible = true
	is_open = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func close():
	visible = false
	is_open = false
