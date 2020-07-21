extends Node2D

var set_on = false

func _ready():
	$main.hide()
	$"blue sky".hide()

func _process(_delta):
	pass


func _on_closeButton_released():
	$main/close/close_tween.interpolate_property($main/close/close
	, "scale", Vector2(0.325, 0.325), Vector2(0.473, 0.473), 0.2,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$main/close/close_tween.start()


func _on_close_tween_tween_completed(_object, _key):
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

