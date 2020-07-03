extends AnimationPlayer

onready var node = get_node("/root/Main_Menu/hud/Score")
var anim_started = 1

func _ready():
	pass
func _process(delta):
	if anim_started == 1:
		if node.score_val > rand_range(600.0, 700.0):
			play("const_anim")
			anim_started = 2

func _on_const_anim_animation_finished(const_anim):
	play("const_move")
	playback_speed = 0.2
