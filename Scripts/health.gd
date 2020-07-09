extends Area2D
onready var node2 = get_node("/root/Main_Menu/hud/PowerupDisplay")
export var velocity = Vector2()
export var spriteSize = int() 

func _ready():
	pass

func _process(delta):
	translate(velocity * delta)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()


func _on_Powerup_body_entered(_body: KinematicBody2D):
	# test
	queue_free()
	node2.health = true


func _on_Powerup_area_entered(area):
	queue_free()
	node2.health = true
