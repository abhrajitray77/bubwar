extends Node

const vEnemy = preload("res://Scenes/verticalEnemy.tscn")
const dEnemy = preload("res://Scenes/diagonalEnemy.tscn")
const rEnemy = preload("res://Scenes/RadioEnemy.tscn")
onready var node = get_node("/root/Main_Menu/hud/Score")
onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
onready var timer_started = false
var spin = false
var rock = false
var rad = false

func _ready():
	pass

func _process(_delta):
	# Set timer
	if node2.played == true:
		if rad == false:
			if node.score_val > rand_range(900.0, 1000.0):
				$radEnemy.wait_time = rand_range(1.0, 3.0)
				$radEnemy.start()
				rad = true
		if rock == false:
			if node.score_val > rand_range(50.0, 100.0):
				$rockEnemy.wait_time = rand_range(1.0, 3.0)
				$rockEnemy.start()
				rock = true
		if spin == false:
			$spinEnemy.wait_time = rand_range(1.0, 3.0)
			$spinEnemy.start()
			spin = true

func _on_radEnemy_timeout():
	if node.score_val > rand_range(900.0, 1000.0):
		var radEnemy = rEnemy.instance()
		var pos2   = Vector2()
		pos2.x = rand_range(radEnemy.spriteSize - 150, get_viewport().get_visible_rect().size.x - radEnemy.spriteSize + 50)
		pos2.y = 0 - radEnemy.spriteSize - 400
		radEnemy.position = pos2
		$Container.add_child(radEnemy)
		# Set timer again
		$radEnemy.wait_time = rand_range(4.0, 7.0)
		$radEnemy.start()

func _on_rockEnemy_timeout():
	if node.score_val > rand_range(50.0, 100.0):
		var diaEnemy = dEnemy.instance()
		var pos2   = Vector2()
		pos2.x = rand_range(diaEnemy.spriteSize - 150, get_viewport().get_visible_rect().size.x - diaEnemy.spriteSize + 50)
		pos2.y = 0 - diaEnemy.spriteSize - 400
		diaEnemy.position = pos2
		$Container.add_child(diaEnemy)
		# Set timer again
		$rockEnemy.wait_time = rand_range(2.0, 5.0)
		$rockEnemy.start()

func _on_spinEnemy_timeout():
	randomize()
	var verenemy = vEnemy.instance()
	var pos   = Vector2()
	pos.x = rand_range(verenemy.spriteSize - 150, get_viewport().get_visible_rect().size.x - verenemy.spriteSize + 50)
	pos.y = 0 - verenemy.spriteSize - 400
	verenemy.position = pos
	$Container.add_child(verenemy)
	# Set timer again
	$spinEnemy.wait_time = rand_range(1.5, 3.0)
	$spinEnemy.start()
