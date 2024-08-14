extends CanvasLayer
class_name UI
@onready var score_label=%Label

func update_score_label(value):
	score_label.text = "Puntaje :"+str(value)

func _on_button_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/example_menu.tscn")


func _on_button_main_menu_mouse_entered():
	$AudioStreamPlayer.play()
#este sonido se grabó haciendo burbujitas (letra P MUY MARCADA) con la boca uwu y DAW se le aplico reaverbate wet.
