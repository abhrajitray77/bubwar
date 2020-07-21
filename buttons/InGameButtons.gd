extends Node2D

onready var node2 = get_node("/root/Main_Menu/hud/Score")
onready var node = $AnimationTree
var pressed = 0
var pause_check = false
var press_tog = false
onready var view = get_viewport_rect().size
func _ready():
	$"Pause menu bg".hide()
	$darken_bg.hide()

func _process(_delta):
	if press_tog == true:
		$Pause_main/Pause.set("pressed", true)

func _on_Pause_toggled(button_pressed):
	pressed = pressed + 1
	print(pressed)
	print(button_pressed)
	if button_pressed == true:
		pause_check = true
	elif button_pressed == false:
		pause_check = false
		press_tog = false
	if button_pressed:
		$"Pause menu bg".show()
		node.playback.start("popup")
		$darken_bg.show()
	else:
		$"Pause menu bg".hide()
		$darken_bg.hide()
		
func _on_Restart_released():
	get_tree().reload_current_scene()

func _on_menu_released():
	get_tree().quit()
