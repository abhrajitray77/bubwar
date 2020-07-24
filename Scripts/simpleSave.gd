extends Node

var score_file = "user://highscore.save"
var highscore

func _ready():
	load_score()
	#print("HighScore: ",highscore)

func load_score():
	var f = File.new()
	if f.file_exists(score_file):
		f.open(score_file, File.READ)
		highscore = f.get_var()
		f.close()
	else:
		highscore = 0

func save_score(score):
	if score > highscore:
		highscore = score
		var f = File.new()
		f.open(score_file, File.WRITE)
		f.store_var(highscore)
		f.close()


