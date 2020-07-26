extends Node2D

onready var node = get_node("/root/Main_Menu/hud/coinsCounter")
var coin_displayed = false

func _ready():
	pass

func _process(_delta):
	if get_parent().get_parent().anim_played == true:
		if coin_displayed == false:
			$coin_text.text = str(node.coin_val)
			coin_displayed = true
