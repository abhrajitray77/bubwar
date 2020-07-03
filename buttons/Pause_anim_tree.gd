extends AnimationTree

onready var node = get_node("/root/Main_Menu/Pause_menu/InGameButtons")
var playback = AnimationNodeStateMachinePlayback
var anim_started = 1

func _ready():
	playback = get("parameters/playback")
	active = true
