extends AspectRatioContainer

var prev_tween: Tween
var time: float = 0.2
var letter: String = "A"

func set_letter(n_letter: String = "A"):
	letter = n_letter
	$TextureRect/Label.text = letter

func _ready():
	mouse_entered.connect(grow)
	mouse_exited.connect(shrink)

func kill():
	if prev_tween:
		prev_tween.kill()

func grow():
	kill()
	var tween = get_tree().create_tween()
	tween.tween_property(self, "size_flags_stretch_ratio", 2.0, time)
	prev_tween = tween

func shrink():
	kill()
	var tween = get_tree().create_tween()
	tween.tween_property(self, "size_flags_stretch_ratio", 1.0, time)
	prev_tween = tween
