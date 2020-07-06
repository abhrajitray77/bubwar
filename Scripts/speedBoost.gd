extends Area2D
onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/TouchScreenButton")
onready var node = get_node("/root/Main_Menu/hud/PowerupDisplay")
onready var node3 = get_node("/root/Main_Menu/PowSpawner")
export var velocity = Vector2()
export var spriteSize = int() 

func _ready():
	pass

func _process(delta):
	translate(velocity * delta)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()

func _on_Powerup_body_entered(_body: KinematicBody2D):
	node.speed = true
	node.shield = true
	node.shield_on = true
	queue_free()
