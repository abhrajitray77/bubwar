extends Node2D

onready var node = get_node("/root/Main_Menu/hud/Score")
var score_displayed = false

func _ready():
	pass

func _process(_delta):
	if get_parent().get_parent().anim_played == true:
		if score_displayed == false:
			$score_text.text = str(node.score_val)
			score_displayed = true
