extends AnimationTree

onready var node = get_node("/root/Main_Menu/hud/Score")
var anim_started = false
var playback = AnimationNodeStateMachinePlayback

func _ready():
	playback = get("parameters/playback")
	set_active(true)
func _process(delta):
	if anim_started == false:
		if node.score_val > rand_range(600.0, 700.0):
			playback.start("modulator")
			anim_started = true
