extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/HBoxContainer/CanvasLayer/Label3.text = "You obtained " + str(coin.score) + "/10 coins with \n" + str(timer.minutes) + " Minutes and " + str(timer.seconds) +" seconds \nremaining"
