extends Node2D

var set_on = false

func _ready():
	$main.hide()
	$"blue sky".hide()

func _process(delta):
	pass


func _on_closeButton_released():
	$main/close/close_tween.interpolate_property($main/close/close
	, "scale", Vector2(0.325, 0.28), Vector2(0.442, 0.38), 0.2,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$main/close/close_tween.start()


func _on_close_tween_tween_completed(object, key):
	$main.hide()
	$button/TextureButton.show()
	$"blue sky".hide()
	$main/close/close.scale = Vector2(0.473, 0.473)
	set_on = false



func _on_TextureButton_pressed():
	$main.show()
	$button/TextureButton.hide()
	$"blue sky".show()
	set_on = true

