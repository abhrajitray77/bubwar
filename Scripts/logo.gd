extends Node2D
onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
var anim_stopped = false

func _ready():
	$logo_player.play("logo_position")

func _process(_delta):
	if node.played == true:
		if anim_stopped == false:
			$logo_player.playback_speed = 0.8
			$logo_player.play_backwards("logo_position")
			anim_stopped = true

func _on_logo_player_animation_finished(anim_name):
	if anim_name == 'logo_position':
		$logo_player.play("foam_looper")
		$logo_player.playback_speed = 0.110
