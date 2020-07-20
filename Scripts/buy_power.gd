extends Node2D


func _ready():
	pass


func _on_buyButton_released():
	$Tween.interpolate_property($buy_bg, "scale", 
	Vector2(0.5,0.3), Vector2(0.684, 0.485), 0.2, 
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()


func _on_Tween_tween_completed(object, key):
	$buy_bg.scale = Vector2(0.684, 0.485)
