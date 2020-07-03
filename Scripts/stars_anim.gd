extends AnimationTree

onready var node = get_node("/root/Main_Menu/hud/Score")
var playback = AnimationNodeStateMachinePlayback
var anim_started = 1

func _ready():
	playback = get("parameters/playback")
	active = true
func _process(delta):
	if anim_started == 1:
		if node.score_val > rand_range(820.0,850.0):
			playback.start("base_star")
			anim_started = 2
