extends Node2D
onready var node = get_node("/root/Main_Menu/PowSpawner")
onready var lightning = false
onready var shield = false
onready var health = false
onready var speed = false
var tween_played = false

func _ready():
	$powerups/Lightning.hide()
	$powerups/Shield.hide()
	$powerups/Speed.hide()

func _process(_delta):
	if node.powActive == true:
		if tween_played == false:
			$powerups/Tween.interpolate_property($powerups, "modulate",
			Color(1,1,1,1), Color(1,1,1,0.5) , 2,
			Tween.TRANS_LINEAR, Tween.EASE_OUT_IN)
			$powerups/Tween.start()
			tween_played = true

	if lightning == true:
		$powerups/Lightning.show()
		node.powActive = true
	else:
		$powerups/Lightning.hide()
	if shield == true :
		$powerups/Shield.show()
		node.powActive = true
	else:
		$powerups/Shield.hide()
	if speed == true:
		$powerups/Speed.show()
		node.powActive = true
	else:
		$powerups/Speed.hide()
