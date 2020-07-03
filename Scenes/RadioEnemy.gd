extends "res://Scripts/enemy.gd"

var anim_played = 1

func _ready():
	velocity.x = rand_range(velocity.x, -velocity.x)
	$Sprite/BaseBubble.play("spin")

func _process(delta):
	if anim_played == 1:
		$CollisionShape2D/Collider.play("collider")
		anim_played = 2
	if get_position().x <= 0+spriteSize:
		velocity.x = abs(velocity.x)
	if get_position().x >= get_viewport_rect().size.x - spriteSize:
		velocity.x = - abs(velocity.x)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()
	pass
