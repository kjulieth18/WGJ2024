extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _on_button_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/example_menu.tscn")

func _on_button_ost___sfx_mouse_entered():
	$AudioStreamPlayer.play()
func _on_button_ui_ux_mouse_entered():
	$AudioStreamPlayer.play()
func _on_button_develop_mouse_entered():
	$AudioStreamPlayer.play()
func _on_button_main_menu_mouse_entered():
	$AudioStreamPlayer.play()
