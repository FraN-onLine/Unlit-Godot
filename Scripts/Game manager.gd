extends Node

@onready var timer = $"../CanvasLayer".get_node("Timer")
@onready var player = $"../CharacterBody2D"

func _process(delta):
	if timer.minutes == 0 and timer.seconds == 0:
		var point_light = player.get_node("PointLight2D")
		if point_light.scale > Vector2(0.0 , 0.0):
			point_light.scale -= Vector2(0.01, 0.01)
		
