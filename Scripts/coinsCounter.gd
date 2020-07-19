extends Node2D
onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
var coin_val = 0 
var prev_score_val = 0
onready var font_size = $coin_bar/coin_tex.get("custom_fonts/font")
var play_tween = false
var tween_played = false

func _ready():
	pass
	
func _process(_delta):
	$coin_bar/coin_tex.set_text(str(coin_val))
	if play_tween == true:
		if tween_played == false:
			$Tween.interpolate_property(self, "position",
			Vector2(973.881,201.787), Vector2(973.881, 250.787), 0.2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
			$Tween.start()
			tween_played = true
			play_tween == false

func _on_Tween_tween_all_completed():
	set_position(Vector2(973.881, 201.787))
