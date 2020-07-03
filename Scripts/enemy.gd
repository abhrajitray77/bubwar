extends Area2D
onready var node = get_node("/root/Main_Menu/hud/Score")
onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/basicDamageAnim")
onready var node3 = get_node("/root/Main_Menu/hud/healthBubble")
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
	node2.play = true
	node3.count += 1 
	queue_free()
	#ode.score_val = node.score_val + 20

#func _on_Enemy_body_exited(body: KinematicBody2D):
#	node3.entered = false
