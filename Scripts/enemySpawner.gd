extends Node

const vEnemy = preload("res://Scenes/verticalEnemy.tscn")
const dEnemy = preload("res://Scenes/diagonalEnemy.tscn")
const rEnemy = preload("res://Scenes/RadioEnemy.tscn")
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
	var verenemy = vEnemy.instance()
	var pos   = Vector2()
	pos.x = rand_range(verenemy.spriteSize - 150, get_viewport().get_visible_rect().size.x - verenemy.spriteSize + 50)
	pos.y = 0 - verenemy.spriteSize - 400
	verenemy.position = pos
	$Container.add_child(verenemy)
	# Set timer again
	$Timer.wait_time = rand_range(0.5, 0.7)
	$Timer.start()
#to instantiate the diagonal enemy first i need a score count
	if node.score_val > rand_range(50.0, 100.0):
		var diaEnemy = dEnemy.instance()
		var pos2   = Vector2()
		pos2.x = rand_range(diaEnemy.spriteSize - 150, get_viewport().get_visible_rect().size.x - diaEnemy.spriteSize + 50)
		pos2.y = 0 - diaEnemy.spriteSize - 400
		diaEnemy.position = pos2
		$Container.add_child(diaEnemy)
		# Set timer again
		$Timer.wait_time = rand_range(1.0, 3.0)
		$Timer.start()
#RadioActiveEnemy
	if node.score_val > rand_range(900.0, 1000.0):
		var radEnemy = rEnemy.instance()
		var pos2   = Vector2()
		pos2.x = rand_range(radEnemy.spriteSize - 150, get_viewport().get_visible_rect().size.x - radEnemy.spriteSize + 50)
		pos2.y = 0 - radEnemy.spriteSize - 400
		radEnemy.position = pos2
		$Container.add_child(radEnemy)
		# Set timer again
		$Timer.wait_time = rand_range(1.0, 3.0)
		$Timer.start()
