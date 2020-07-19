extends Node2D

#var music_off = false

func _ready():
	pass

func _on_Tween_tween_completed(object, key):
	self.scale = Vector2(1, 1)

func _on_set_on_off_toggled(button_pressed):
	if button_pressed == true:
		$Tween.interpolate_property(self, "scale", 
		Vector2(0.78,0.78), Vector2(1, 1), 0.2, 
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
	if button_pressed ==false:
		$Tween.interpolate_property(self, "scale", 
		Vector2(0.78,0.78), Vector2(1, 1), 0.2, 
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
