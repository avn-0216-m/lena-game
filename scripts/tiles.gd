extends HBoxContainer

const MAX_TILES: int = 10
const ALPHABET: Array = ["A", "B", "C", "D", "E", "F", "G", "H"]

@export var tile_src: PackedScene



func _ready():
	$LetterBag.pressed.connect(add_tile)

func add_tile():
	if $Hand.get_children().size() >= MAX_TILES: return # No.
	var tile_obj = tile_src.instantiate()
	$Hand.add_child(tile_obj)
	tile_obj.set_letter(ALPHABET.pick_random())
