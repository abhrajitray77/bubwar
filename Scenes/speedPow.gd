extends Node

onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/TouchScreenButton")
onready var node = get_node("/root/Main_Menu/hud/PowerupDisplay")
onready var node3 = get_node("/root/Main_Menu/PowSpawner")
var powAnim = false
var timescale = false

var WAIT_TIME = 6.0
var FAST_TIME = 5.0
var SLOW_TIME = 1.0

func _ready():
	pass

func _process(_delta):
	if node2.powUsed == true:
		if node.speed == true:
			if timescale == false:
				if powAnim == false:
					node.shield = true
					Engine.time_scale = FAST_TIME
					$speedTimer.wait_time = WAIT_TIME * FAST_TIME
					$speedTimer.start()
					powAnim = true
					timescale = true

func _on_speedTimer_timeout():
	powAnim = false
	timescale = false
	node2.powUsed = false
	node.speed = false
	node3.powActive = false
	Engine.time_scale = SLOW_TIME
	node.shield = false
