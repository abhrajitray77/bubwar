extends Node2D

var play = false
var anim_played = 1
func _ready():
	pass

func _process(_delta):
	if play == true:
		$AnimationPlayer.play("damageFlash")

func _on_AnimationPlayer_animation_finished(anim_name):
	anim_name = "damageFlash"
	play = false
