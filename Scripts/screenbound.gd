extends Node2D

onready var node2 = get_node("/root/Main_Menu/Player_stuff/PLayer/Player/main_bg")
onready var node = get_node("/root/Main_Menu/Pause_menu/InGameButtons/Pause menu bg")
onready var screen = get_viewport_rect().size
onready var view = get_viewport_transform().y
var clamp_val_x = 150 #for 1080
var clamp_val_y_min = 150 #for 1920
var clamp_val_y_max = 150
var anim_played = 1
var viewpos
func _ready():
	ProjectSettings.get_setting("display/window/size/width")
	ProjectSettings.get_setting("display/window/size/height")
	ProjectSettings.set("display/window/size/width", screen.x)
	ProjectSettings.set("display/window/size/height", screen.y)

func _process(_delta):
	if  ProjectSettings.get_setting("display/window/size/width")== 1080 and ProjectSettings.get_setting("display/window/size/height") == 2220:
		clamp_val_x = 150
		clamp_val_y_min = 10
		clamp_val_y_max = 300
		node.position.y = 1050
	viewpos = $Player_stuff/PLayer/Player.position
	viewpos.x = clamp(viewpos.x, clamp_val_x, screen.x -clamp_val_x)
	viewpos.y = clamp(viewpos.y, clamp_val_y_min, screen.y -clamp_val_y_max)
	$Player_stuff/PLayer/Player.set_position(viewpos)
	if node2.played == true:
		if anim_played == 1:
			$Pause_menu/InGameButtons/Button_Mod.play("Button_modu")
			$hud/healthBubble/AnimationPlayer.play("healthModu")
			anim_played = 2
	#print(viewpos)
