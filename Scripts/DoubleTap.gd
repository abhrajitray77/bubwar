extends TouchScreenButton

onready var node2 = preload("res://Scenes/Doubletap.tscn")
onready var node = get_node("/root/Main_Menu/PowSpawner")
var powUsed = false

signal double_tap

var tap_count := 1
var timer = Timer.new()

func _ready():
	self.connect("pressed", self, "_on_self_pressed",[],0)
	timer.connect("timeout",self,'_timer_timeout')
	
	timer.one_shot = true
	self.add_child(timer, true)
	timer = get_node('Timer')


func _on_self_pressed():
	_tap_counter()


func _tap_counter():
	if timer.time_left == 0:
		timer.start(0.23)
	else:
		tap_count += 1
	
	if tap_count >= 2:
		timer.stop()
		tap_count = 1
		
		emit_signal("double_tap")
		if get_parent().has_method(str("_on_",self.get_name(),"_doubletap")) == true:
			get_parent().call(str("_on_", self.get_name(), "_doubletap"))


func _timer_timeout():
	tap_count = 1


func _on_TouchScreenButton_double_tap():
	print("tapped")
	#get_parent().get_node("AnimatedSprite").play()
	#get_parent().get_node("AnimatedSprite").set_frame(0)
	if node.powActive == true:
		powUsed = true
