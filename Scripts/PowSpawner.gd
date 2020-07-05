extends Node2D

const ShPow = preload("res://Scenes/shield.tscn")
const LPow  = preload("res://Scenes/LightPowerup.tscn")
onready var node = get_node("/root/Main_Menu/hud/Score")
onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
onready var timer_started = false
var powActive = false

func _ready():
	pass
	

func _process(_delta):
	# Set timer
	if timer_started == false:
		if node2.played == true:
			$lightTimer.wait_time = rand_range(1.0, 3.0)
			$lightTimer.start()
			$shTimer.wait_time = rand_range(10.0, 15.0)
			$shTimer.start()
			timer_started = true

func _on_lightTimer_timeout():
	#lightningPowerup
	if powActive == false:
		randomize()
		var LiPow = LPow.instance()
		var Lpos = Vector2()
		Lpos.x = rand_range(LiPow.spriteSize - 150, get_viewport().get_visible_rect().size.x - LiPow.spriteSize + 50)
		Lpos.y = 0 - LiPow.spriteSize - 400
		LiPow.position = Lpos
		$Container.add_child(LiPow)
		# Set timer again
		$lightTimer.wait_time = rand_range(20.0, 25.0)
		$lightTimer.start()

func _on_shTimer_timeout():
	if powActive == false:
		randomize()
		var shield = ShPow.instance()
		var pos   = Vector2()
		pos.x = rand_range(shield.spriteSize - 150, get_viewport().get_visible_rect().size.x - shield.spriteSize + 50)
		pos.y = 0 - shield.spriteSize - 300
		shield.position = pos
		$Container.add_child(shield)
		# Set timer again
		$shTimer.wait_time = rand_range(10.0, 15.0)
		$shTimer.start()