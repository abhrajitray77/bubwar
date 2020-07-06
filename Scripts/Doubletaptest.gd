extends Node2D

onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/TouchScreenButton")
#var index_val = false
var anim = false
func _ready():
#	var touch = movement.instance()
	pass

func _process(_delta):
	if anim == true:
		$AnimatedSprite.play()
		$AnimatedSprite.set_frame(0)
		anim = false
