extends Sprite
onready var node2 = get_node("/root/Main_Menu/hud/PowerupDisplay")
onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/TouchScreenButton")
onready var node3 = get_node("/root/Main_Menu/PowSpawner")
onready var node4 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
var executed = false 
func _ready():
	visible = false
	$Area2D/CollisionShape2D.disabled = true

func _process(_delta):
	if node2.shield == true:
		if node.powUsed == true:
			if executed == false:
				node4.modulate = Color(1,1,1,0.75)
				$AnimationPlayer2.play("shield")
				visible = true
				$Area2D/CollisionShape2D.disabled = false
				$Timer.wait_time = (6 * Engine.time_scale) +  3
				$Timer.start()
				executed = true
func _on_Area2D_area_entered(area: Area2D):
	area.queue_free()

func _on_Timer_timeout():
	node2.shield = false
	node.powUsed = false
	visible = false
	$Area2D/CollisionShape2D.disabled = true
	node3.powActive = false
	executed = false
	node4.modulate = Color(1,1,1,1)
	$AnimationPlayer2.stop()


func _on_Area2D_area_shape_entered(area_id, area, area_shape, self_shape):
	pass # Replace with function body.
