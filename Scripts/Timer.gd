extends Control
class_name timer

var Dminutes = 0
var Dseconds = 30
static var minutes = 0
static var seconds = 30


func _ready():
	reset()

func reset():
	seconds = Dseconds
	minutes = Dminutes
	

func _on_timer_timeout():
	if seconds > 0 or minutes > 0:
		if seconds == 0:
			if minutes > 0:
				seconds = 60
				minutes -= 1
		seconds -=1
	
	if minutes == 0 and seconds == 0:
		$Label.add_theme_color_override("font_color", Color("#ba2b00"))
	
	
	$Label.text = " " + str(minutes) + ":" + str(seconds).pad_zeros(2)


