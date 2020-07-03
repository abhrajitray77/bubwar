extends ParallaxBackground

var offset_loc = 0

func _ready():
	pass

func _process(delta):
	offset_loc = offset_loc + 150 * delta
	set_scroll_offset(Vector2(0, offset_loc))
