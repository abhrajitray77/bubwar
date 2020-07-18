extends Node2D


func _ready():
	$store_final.hide()
	$Buttons/Button.hide()
	$"blue sky".hide()

func _on_TextureButton_pressed():
	$store_final.show()
	$TextureButton.hide()
	$Buttons/Button.show()
	$"blue sky".show()


func _on_Button_pressed():
	$store_final.hide()
	$TextureButton.show()
	$Buttons/Button.hide()
	$"blue sky".hide()
