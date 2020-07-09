extends Node2D

const ShPow = preload("res://Scenes/shield.tscn")
const LPow  = preload("res://Scenes/LightPowerup.tscn")
const hPow = preload("res://Scenes/healthPow.tscn")
const sPow = preload("res://Scenes/speedbBoost.tscn")
const co = preload("res://Scenes/coins.tscn")
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
			$healthTimer.wait_time = rand_range(12.0 , 14.0)
			$healthTimer.start()
			$speedTimer.wait_time = rand_range(15.0, 20.0)
			$speedTimer.start()
			$coinTimer.wait_time = rand_range(4.0, 8.0)
			$coinTimer.start()
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


func _on_healthTimer_timeout():
	randomize()
	var heaPow = hPow.instance()
	var hpos   = Vector2()
	hpos.x = rand_range(heaPow.spriteSize - 150, get_viewport().get_visible_rect().size.x - heaPow.spriteSize + 50)
	hpos.y = 0 - heaPow.spriteSize - 300
	heaPow.position = hpos
	$Container.add_child(heaPow)
	# Set timer again
	$healthTimer.wait_time = rand_range(12.0, 17.0)
	$healthTimer.start()

func _on_speedTimer_timeout():
	if powActive == false:
		randomize()
		var speedPow = sPow.instance()
		var spos   = Vector2()
		spos.x = rand_range(speedPow.spriteSize - 150, get_viewport().get_visible_rect().size.x - speedPow.spriteSize + 50)
		spos.y = 0 - speedPow.spriteSize - 300
		speedPow.position = spos
		$Container.add_child(speedPow)
		# Set timer again
		$speedTimer.wait_time = rand_range(15.0, 20.0)
		$speedTimer.start()


func _on_coinTimer_timeout():
	randomize()
	var coin = co.instance()
	var coinpos   = Vector2()
	coinpos.x = rand_range(coin.spriteSize - 150, get_viewport().get_visible_rect().size.x - coin.spriteSize + 50)
	coinpos.y = 0 - coin.spriteSize - 300
	coin.position = coinpos
	$Container.add_child(coin)
	# Set timer again
	$coinTimer.wait_time = rand_range(2.0, 4.0)
	$coinTimer.start()
	randomize()
	var coin2 = co.instance()
	var coin2pos   = Vector2()
	coin2pos.x = rand_range(coin2.spriteSize - 150, get_viewport().get_visible_rect().size.x - coin2.spriteSize + 50)
	coin2pos.y = 0 - coin2.spriteSize - 300
	coin2.position = coin2pos
	$Container.add_child(coin2)
	# Set timer again
	$coinTimer.wait_time = rand_range(2.0, 4.0)
	$coinTimer.start()
