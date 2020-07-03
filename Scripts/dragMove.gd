extends KinematicBody2D
onready var node = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
var newDeltaX
var newDeltaY
var deltaX
var deltaY
var touchPos = Vector2()
var areaEnt = false


func _on_TouchScreenButton_pressed():
	areaEnt = true
func _on_TouchScreenButton_released():
	areaEnt = false

func _input(event):
	if node.played == true:
		if areaEnt == true:
			if event is InputEventScreenTouch and event.is_pressed():
				touchPos = event.get_position()
				deltaX = touchPos.x - position.x
				deltaY = touchPos.y - position.y

			elif event is InputEventScreenDrag:
				touchPos = event.get_position()
				newDeltaX = touchPos.x - deltaX
				newDeltaY = touchPos.y - deltaY
				set_position(Vector2(newDeltaX, newDeltaY))
