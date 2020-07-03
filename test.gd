extends KinematicBody2D

var speed = 0
export var max_speed = 100

var direction = Vector2()

#var screensize = get_viewport_rect().size
const TOP = Vector2(0,-1)
const DOWN = Vector2(0,1)
const RIGHT = Vector2(1,0)
const LEFT = Vector2(-1,0)

func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	var is_moving = Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down") or Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left")
	
	direction = Vector2()
	
	if is_moving:
		speed = max_speed 
		if Input.is_action_pressed("ui_up"):
			direction += TOP
			#$AnimatedSprite.rotation_degrees = 180
		elif Input.is_action_pressed("ui_down"):
			direction += DOWN
			#$AnimatedSprite.rotation_degrees = 0
		if Input.is_action_pressed("ui_right"):
			direction += RIGHT
			#$AnimatedSprite.rotation_degrees = 270
		elif Input.is_action_pressed("ui_left"):
			direction += LEFT
			#$AnimatedSprite.rotation_degrees = 90
	else:
		speed = 0
	
	var velocity = speed * direction.normalized() * delta
	
	move_and_collide(velocity)


