extends Sprite
onready var node2 = get_node("/root/Main_Menu/hud/Score")
onready var played = false
func _ready():
	pass
func _input(event):
	$AnimationPlayer.get_animation("bubble_wiggle").set("Animation position", 0)
	if event is InputEventScreenTouch and event.pressed :
		if get_rect().has_point(to_local(event.position)):
			played = true
			$AnimationPlayer.play("bubble_wiggle")
			node2.timer.start()
