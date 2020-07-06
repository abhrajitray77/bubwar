extends Control
onready var node = get_node("/root/Main_Menu/Pause_menu/InGameButtons")
onready var node2 = get_node("/root/Main_Menu/Pause_menu/GameOver")
func _process(_delta):
	if node.pause_check == true or node2.pause_check == true:
		get_tree().paused = true
	elif node.pause_check == false or node2.pause_check == false:
		get_tree().paused = false

func _notification(what) -> void:
	#if what == MainLoop.NOTIFICATION_WM_FOCUS_IN:
		
		#print("infocus")
	if what == MainLoop.NOTIFICATION_WM_FOCUS_OUT:
		node.press_tog = true
