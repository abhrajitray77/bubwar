extends Node2D

var tab_1 = false

func _ready():
	$store_final.hide()
	$"blue sky".hide()
	
	#tab modulation
	tab_1 = true

func _process(delta):
	if tab_1 == true:
		$store_final/tabs/store_tab2.self_modulate = Color(0.521569, 0.305882, 0.305882)
		$store_final/tabs/store_tab1.z_index = 1
		$store_final/tabs/store_tab1.self_modulate = Color(1, 1, 1)
		$store_final/tabs/store_tab2.z_index = 0
	if tab_1 == false:
		$store_final/tabs/store_tab1.self_modulate = Color(0.521569, 0.305882, 0.305882)
		$store_final/tabs/store_tab2.z_index = 1
		$store_final/tabs/store_tab2.self_modulate = Color(1, 1, 1)
		$store_final/tabs/store_tab1.z_index = 0

func _on_TextureButton_pressed():
	$store_final.show()
	$TextureButton.hide()
	$"blue sky".show()

func _on_tab1_released():
	tab_1 = true

func _on_tab2_released():
	tab_1 = false

func _on_closeButton_released():
	$store_final/buttons/close_main/close_tween.interpolate_property($store_final/buttons/close_main/close
	, "scale", Vector2(0.325, 0.28), Vector2(0.442, 0.38), 0.2,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$store_final/buttons/close_main/close_tween.start()


func _on_close_tween_tween_completed(object, key):
	$store_final.hide()
	$TextureButton.show()
	$"blue sky".hide()
