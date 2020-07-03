extends Node2D

onready var score = get_node("Score_bar/score_tex")
var score_val = 0 
var prev_score_val = 0
onready var font_size = $Score_bar/score_tex.get("custom_fonts/font")
func _ready():
	#score.text = int(score.text)
	#$Score_bar/score_tex.get("custom_fonts/font").set_size(100)
	#rint(font_size.size)
	pass
func _process(delta):
	$Score_bar/score_tex.set_text(str(score_val))
	if len(str(score_val)) - len(str(prev_score_val)):
		if font_size.size > 50:
			font_size.set_size(font_size.size - 10)
			
	prev_score_val = score_val
