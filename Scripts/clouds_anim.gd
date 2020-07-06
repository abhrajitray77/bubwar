extends AnimationTree

onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
onready var node = get_node("/root/Main_Menu/hud/Score")
var playback = AnimationNodeStateMachinePlayback
var anim_started = 1

func _ready():
	playback = get("parameters/playback")
	active = true
func _process(_delta):
	if anim_started == 1:
		if node2.played == true:
			playback.start("Clouds")
			anim_started = 2
