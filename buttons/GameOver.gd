extends Node2D
onready var node4 = get_node("/root/Main_Menu/Pause_menu/InGameButtons")
onready var node2 = get_node("/root/Main_Menu/hud/Score")
onready var node6 = get_node("/root/Main_Menu/hud/coinsCounter")
onready var node5 = get_node("/root/Main_Menu/system/simpleSave")
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
	var save_obj = {
		"score": node2.score_val,
		"coin": node6.coin_val,
	}
	node5.save_property(save_obj)
	get_tree().quit()

func _on_Restart_pressed():
	var save_obj = {
		"score": node2.score_val,
		"coin": node6.coin_val,
	}
	node5.save_property(save_obj)
	get_tree().reload_current_scene()
	Engine.time_scale = 1.0
