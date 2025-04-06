extends Area2D

@onready var player = $"../CharacterBody2D"

func _on_body_entered(body):
	var point_light = player.get_node("PointLight2D")
	while point_light.scale > Vector2(0.0 , 0.0):
		point_light.scale -= Vector2(0.01, 0.01)
	get_tree().change_scene_to_file("res://end.tscn")
