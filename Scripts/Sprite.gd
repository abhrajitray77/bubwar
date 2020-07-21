extends Sprite
onready var node2 = get_node("/root/Main_Menu/hud/Score")
onready var node = get_node("/root/Main_Menu/Pause_menu/settings")
onready var node3 = get_node("/root/Main_Menu/Pause_menu/store_main")
onready var played = false
func _ready():
	pass
func _input(event):
	$AnimationPlayer.get_animation("bubble_wiggle").set("Animation position", 0)
	if event is InputEventScreenTouch and event.pressed :
		if node.set_on == false and node3.store_on == false :
			if get_rect().has_point(to_local(event.position)):
				played = true
				$AnimationPlayer.play("bubble_wiggle")
				node2.timer.start()
