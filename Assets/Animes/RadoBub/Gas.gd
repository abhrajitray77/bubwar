extends AnimationTree
var playback = AnimationNodeStateMachinePlayback
var anim_started = 1

func _ready():
	playback = get("parameters/playback")
	active = true
func _process(_delta):
	if anim_started == 1:
		playback.start("Gas")
		anim_started = 2
