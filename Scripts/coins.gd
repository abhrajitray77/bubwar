extends Area2D
onready var node = get_node("/root/Main_Menu/hud/coinsCounter")
export var velocity = Vector2()
export var spriteSize = int() 

func _ready():
	pass

func _process(delta):
	translate(velocity * delta)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()

func _on_Area2D_body_entered(body: KinematicBody2D):
	node.coin_val = node.coin_val + 1
	node.play_tween = true
	node.tween_played = false
	$AnimationPlayer.play("coinAnim")

func _on_Area2D_area_entered(_area):
	node.coin_val = node.coin_val + 1
	print("coin entered aarea")
	node.play_tween = true
	node.tween_played = false
	$AnimationPlayer.play("coinAnim")


func _on_AnimationPlayer_animation_finished(_anim_name):
	queue_free()
