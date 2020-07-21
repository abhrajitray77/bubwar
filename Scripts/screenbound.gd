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
	$Pause_menu/InGameButtons.hide()
	$Pause_menu/settings/button/TextureButton/AnimationPlayer.play("settings_anim")

func _process(_delta):
	if  ProjectSettings.get_setting("display/window/size/width")== 1080 and ProjectSettings.get_setting("display/window/size/height") == 2220:
		clamp_val_x = 150
		clamp_val_y_min = 10
		clamp_val_y_max = 300
		node.position.y = 1050
		$hud/healthBubble.position.y = 2100
		$hud/PowerupDisplay.position.y = 300
		$Pause_menu/store_main.position.y = 300
		$Pause_menu/settings.position.y = 269
		$Pause_menu/settings/main.position.y = -200.929
		$Pause_menu/store_main/store_final.position.y = 580.759
	viewpos = $Player_stuff/PLayer/Player.position
	viewpos.x = clamp(viewpos.x, clamp_val_x, screen.x -clamp_val_x)
	viewpos.y = clamp(viewpos.y, clamp_val_y_min, screen.y -clamp_val_y_max)
	$Player_stuff/PLayer/Player.set_position(viewpos)
	if node2.played == true:
		if anim_played == 1:
			$Pause_menu/InGameButtons.show()
			$Pause_menu/InGameButtons/Button_Mod.play("Button_modu")
			$Pause_menu/store_main/store_mod.play("store_modu")
			$Pause_menu/settings/settings_mod.play("settings_modu")
			$hud/healthBubble/AnimationPlayer.play("healthModu")
			$hud/Score/AnimationPlayer.play("score_mod")
			$hud/coinsCounter/AnimationPlayer.play("coin_count_mod")
			anim_played = 2
	#print(viewpos)

	#turning on store and turning off
	if $Pause_menu/settings.set_on == true:
		$Pause_menu/store_main.hide()
	if $Pause_menu/settings.set_on == false:
		$Pause_menu/store_main.show()

	#turning on settings and turning off
	if $Pause_menu/store_main.store_on == true:
		$Pause_menu/settings.hide()
	if $Pause_menu/store_main.store_on == false:
		$Pause_menu/settings.show()
