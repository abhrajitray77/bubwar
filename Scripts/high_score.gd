extends Node2D

onready var node = get_node("/root/Main_Menu/hud/Score")
onready var node2 = get_node("/root/Main_Menu/Pause_menu/GameOver")
onready var node3 = get_node("/root/Main_Menu/system/simpleSave")
onready var node4 = get_node("/root/Main_Menu/Pause_menu/store_main")

func _ready():
	pass

func _process(_delta):
	if node4.store_on == true:
		$score_text.text = str(node3.save_obj['highscore'], "m")
