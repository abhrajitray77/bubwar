extends AnimationPlayer

onready var node = get_node("/root/Main_Menu/hud/Score")
var anim_played = false
func _ready():
	pass

func _process(delta):
	if anim_played == false:
		if node.score_val > rand_range(600.0, 800.0):
			play("stars_modulator")
			anim_played = true
