extends Node2D

const ShPow = preload("res://Scenes/shield.tscn")
onready var node = get_node("/root/Main_Menu/hud/Score")
onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
onready var timer_started = false

func _ready():
	$Timer.connect("timeout", self, "_on_Timer_timeout")
	pass

func _process(delta):
	# Set timer
	if timer_started == false:
		if node2.played == true:
			$Timer.wait_time = rand_range(1.0, 3.0)
			$Timer.start()
			timer_started = true
	pass
 
func _on_Timer_timeout():
	randomize()
	var shield = ShPow.instance()
	var pos   = Vector2()
	pos.x = rand_range(shield.spriteSize - 150, get_viewport().get_visible_rect().size.x - shield.spriteSize + 50)
	pos.y = 0 - shield.spriteSize - 300
	shield.position = pos
	$Container.add_child(shield)
	# Set timer again
	$Timer.wait_time = rand_range(1.0, 5.0)
	$Timer.start()
