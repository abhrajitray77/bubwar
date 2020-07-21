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
			$bubbles_anim/bubble_anim_logo.stop()
			$bubbles_anim/bubble_anim_logo.play("bubble_foam_modu")
			anim_stopped = true

func _on_logo_player_animation_finished(anim_name):
	if anim_name == 'logo_position':
		$logo_player.play("foam_looper")
		$logo_player.playback_speed = 0.110
		if node.played == false:
			$bubbles_anim/bubble_anim_logo.play("bubble_logo")


func _on_bubble_anim_logo_animation_finished(anim_name):
	if anim_name == "bubble_foam_modu":
		$bubbles_anim.hide()
