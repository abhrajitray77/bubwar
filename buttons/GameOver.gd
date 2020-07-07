extends Node2D
onready var node4 = get_node("/root/Main_Menu/Pause_menu/InGameButtons")
onready var node2 = get_node("/root/Main_Menu/hud/Score")
onready var node3 = get_node("/root/Main_Menu/hud/healthBubble")
onready var node = $AnimationTree
var pause_check = false
var anim_played = false
onready var view = get_viewport_rect().size
func _ready():
	$"Pause menu bg".hide()
	$darken_bg.hide()
	$"Pause menu bg/pause_blue".hide()
	
func _process(_delta):
	if node2.score_val > rand_range(800.0, 1000.0):
		$"Pause menu bg/pause_blue".show()
	if node3.dead == true:
		if anim_played == false:
			pause_check = true
			node4.visible = false
			$"Pause menu bg".show()
			node.playback.start("popup")
			$darken_bg.show()
			anim_played = true

func _on_Button_pressed():
	get_tree().quit()

func _on_Restart_pressed():
	get_tree().reload_current_scene()
	Engine.time_scale = 1.0