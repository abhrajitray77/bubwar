extends AnimationPlayer

onready var node = get_node("/root/Main_Menu/hud/Score")
var anim_played = 1

func _ready():
	pass

func _process(_delta):
	if anim_played == 1:
		if node.score_val > rand_range(200.0, 300.0):
			play("bg_colour1")
			anim_played = 2
	if anim_played == 2:
		if node.score_val > rand_range(500.0, 600.0):
			play("bg_colour2")
			anim_played = 3
	if anim_played == 3:
		if node.score_val > rand_range(800.0, 1000.0):
			play("bg_colour3")
			anim_played = 4
	if anim_played == 4:
		if node.score_val > rand_range(1200.0, 1400.0):
			play("bg_colour4")
			anim_played = 5
