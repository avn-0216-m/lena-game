extends Control

@export var space_src: PackedScene
const number_of_columns = 15

func _ready():
	spawn_scrabble_board()
	
func spawn_scrabble_board():
	if space_src == null:
		push_error("Cannot load space object.")
		return
	for i in range(0,225):
		var space_obj = space_src.instantiate()
		$Board/BoardMargins/BoardGrid.add_child(space_obj)
