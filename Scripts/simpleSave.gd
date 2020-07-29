extends Node

var property_file = "user://property.save"
var save_obj = {
	"highscore": 0,
	"totalCoin": 0,
}

func _ready():
	load_property()
	print("Save_Obj: ",save_obj)

func load_property():
	var f = File.new()
	if f.file_exists(property_file):
		f.open(property_file, File.READ)
		save_obj = f.get_var()
		f.close()


func save_property(save):
	if save['score'] > save_obj['highscore']:
		save_obj['highscore'] = save['score']
		
	if save['coin'] > 0:
		save_obj['totalCoin'] += save['coin']
		
	var f = File.new()
	f.open(property_file, File.WRITE)
	f.store_var(save_obj)
	f.close()


func reset_property():
	var reset = {
		"score": 0,
		"coin": 0,
	}
	save_property(reset)

