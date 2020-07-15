extends AnimationTree

var playback = AnimationNodeStateMachinePlayback
var anim_started = false

func _ready():
	playback = get("parameters/playback")
	active = true
func _process(_delta):
	if anim_started == false:
		playback.start("store_bubble")
		anim_started = true
