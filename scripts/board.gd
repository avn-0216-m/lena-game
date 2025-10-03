extends Control

@export var space_src: PackedScene

@onready var board_grid = get_node("VBoxContainer/AspectRatioContainer/BoardGrid")

func _ready():
	spawn_scrabble_board()
	
func spawn_scrabble_board():
	if space_src == null:
		push_error("Cannot load space object.")
		return
	for i in range(0,225):
		var space_obj = space_src.instantiate()
		board_grid.add_child(space_obj)
