extends Area2D

@onready var timer = $Timer
var i = 0

func _on_body_entered(body):
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	while i < 6:
		body.position.y += -5
		i+= 1
	timer.start()
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	coin.score = 0
