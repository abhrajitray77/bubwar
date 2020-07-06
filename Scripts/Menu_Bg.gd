extends Node2D

onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
onready var node = get_node("/root/Main_Menu/hud/Score")
var anim_started = 1

func _ready():
	pass

func _process(_delta):
	if node.score_val == 0:
		if node2.played == true:
			if anim_started == 1:
				$bg_scroll.play("bg_scroll_stage1")
				anim_started = 2
	if node.score_val > rand_range(70.0, 150.0):
		if anim_started == 2:
			$bg_scroll.play("bg_scroll_2")
			anim_started = 3
