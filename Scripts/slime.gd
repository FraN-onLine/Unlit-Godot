extends Node2D

@onready var ray_right = $RayRight
@onready var ray_left = $RayLeft
@onready var animated_sprite = $AnimatedSprite2D


var direction = 1
var SPEED = 60

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * SPEED * delta
