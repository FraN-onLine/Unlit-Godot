extends Area2D
class_name coin
@onready var timer = $"../../CanvasLayer/Timer"
@onready var scorelabel = $"../../CanvasLayer/Label"
static var score = 0

func _on_body_entered(body):
		var point_light = body.get_node("PointLight2D")
		if point_light:
			point_light.scale += Vector2(0.15, 0.15)
			timer.seconds += 10
			if timer.seconds > 60:
				timer.seconds %= 60
				timer.minutes += 1
				timer.get_node("Label").text = " " + str(timer.minutes) + ":" + str(timer.seconds).pad_zeros(2)
		coin.score += 1
		scorelabel.text = "Coins: " + str(coin.score)
		queue_free()
	
