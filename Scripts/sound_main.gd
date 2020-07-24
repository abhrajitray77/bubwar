extends Node2D

#var sound_off = false

func _ready():
	pass

func _on_Tween_tween_completed(_object, _key):
	$resizer.scale = Vector2(1, 1)

func _on_set_on_off_toggled(button_pressed):
	if button_pressed == true:
		get_tree().get_nodes_in_group("sound_main")
		$Tween.interpolate_property($resizer, "scale", 
		Vector2(0.86,0.86), Vector2(1, 1), 0.2, 
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
		print("when true, ", button_pressed)
	if button_pressed ==false:
		$Tween.interpolate_property($resizer, "scale", 
		Vector2(0.86,0.86), Vector2(1, 1), 0.2, 
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
