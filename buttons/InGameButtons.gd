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
	$"Pause menu bg/pause_blue".hide()
	
func _process(_delta):
	if node2.score_val > rand_range(800.0, 1000.0):
		$"Pause menu bg/pause_blue".show()
	if press_tog == true:
		$Pause_main/Pause.set("pressed", true)

		#$"Pause menu bg/pause_blue".show()
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

func _on_Button_pressed():
	get_tree().quit()

func _on_Restart_pressed():
	get_tree().reload_current_scene()
