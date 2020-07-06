extends "res://Scripts/enemy.gd"

func _ready():
	velocity.x = rand_range(velocity.x, -velocity.x)
	pass

func _process(_delta):
	if get_position().x <= 0+spriteSize:
		velocity.x = abs(velocity.x)
	if get_position().x >= get_viewport_rect().size.x - spriteSize:
		velocity.x = - abs(velocity.x)
	if get_position().y - spriteSize >= get_viewport_rect().size.y:
		queue_free()
	pass
