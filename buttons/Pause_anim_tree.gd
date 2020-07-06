extends AnimationTree
var playback = AnimationNodeStateMachinePlayback
var anim_started = 1

func _ready():
	playback = get("parameters/playback")
	active = true
