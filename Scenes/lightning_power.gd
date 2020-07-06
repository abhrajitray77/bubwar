extends AnimatedSprite

onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/TouchScreenButton")
onready var node = get_node("/root/Main_Menu/hud/PowerupDisplay")
onready var node3 = get_node("/root/Main_Menu/PowSpawner")
var powAnim = false
func _ready():
	self.hide()
	$Area2D/CollisionShape2D.disabled = true

func _process(_delta):
	if node2.powUsed == true:
		if node.lightning == true:
			if powAnim == false:
				self.show()
				$Area2D/CollisionShape2D.disabled = false
				$Timer.wait_time = 15
				$Timer.start()
				playing = true
				powAnim = true

func _on_Area2D_area_entered(area: Area2D):
	area.queue_free()


func _on_Timer_timeout():
	node2.powUsed = false
	node.lightning = false
	$Area2D/CollisionShape2D.disabled = true
	self.hide()
	node3.powActive = false
	powAnim = false
	playing = false
