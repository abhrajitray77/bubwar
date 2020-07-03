extends Area2D
onready var node = get_node("/root/Main_Menu/hud/Score")
export var velocity = Vector2()
export var spriteSize = int() 
# tnigga comment
func _ready():
#	print(spriteSize)
	pass

func _process(delta):
	translate(velocity * delta)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()


func _on_Powerup_body_entered(body: KinematicBody2D):
	# test
	queue_free()
