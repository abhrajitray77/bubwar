extends Node2D
onready var node2 = get_node("/root/Main_Menu/hud/PowerupDisplay")
#onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/basicDamageAnim")
var count = 0
var dead = false
func _ready():
	pass

func _process(_delta):
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
		dead = true
	if node2.health == true:
		$Sprite.show()
		$Sprite4.show()
		$Sprite5.show()
		$Sprite/Sprite2.show()
		$Sprite4/Sprite3.show()
		$Sprite5/Sprite6.show()
		node2.health = false
		count = 0
		dead = false
