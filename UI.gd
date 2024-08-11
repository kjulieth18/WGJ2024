extends CanvasLayer
class_name UI
@onready var score_label=%Label

func update_score_label(value):
	score_label.text = "Puntaje"+str(value)
	
	

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/example_menu.tscn")

