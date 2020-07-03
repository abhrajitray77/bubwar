extends Node2D

#onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/basicDamageAnim")
var count = 0
func _ready():
	pass

func _process(delta):
	if count == 1:
		$Sprite/Sprite2.hide()
	if count == 2:
		$Sprite.hide()
	if count == 3:
		$Sprite4/Sprite3.hide()
	if count == 4:
		$Sprite4.hide()
	if count == 5:
		$Sprite5/Sprite6.hide()
	if count == 6:
		$Sprite5.hide()
