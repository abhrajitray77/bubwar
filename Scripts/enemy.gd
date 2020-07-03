extends Area2D
onready var node = get_node("/root/Main_Menu/hud/Score")
export var velocity = Vector2()
export var spriteSize = int() 

func _ready():
#	print(spriteSize)
	pass

func _process(delta):
	translate(velocity * delta)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()


func _on_Enemy_body_entered(body: KinematicBody2D):
	queue_free()
	node.score_val = node.score_val + 20
