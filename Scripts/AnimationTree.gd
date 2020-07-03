extends AnimationTree

onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
var playback = AnimationNodeStateMachinePlayback
var anim_started = false

func _ready():
	playback = get("parameters/playback")
	active = true
func _process(delta):
	if anim_started == false:
		if node2.played == true:
			playback.start("BlendTree2")
			anim_started = true
