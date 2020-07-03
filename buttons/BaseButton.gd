extends TextureButton

export var destination

func _ready():
	pass


func _on_TextureButton_button_up():
	get_tree().get_root().change_scene()
