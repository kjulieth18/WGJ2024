extends Control

func _ready():
	pass
#colocar funcion ready para evitar bugs
func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	
func _on_button_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_button_quit_pressed():
	get_tree().quit()
	
func _on_button_play_mouse_entered():
	$AudioStreamPlayer.play()
func _on_button_credits_mouse_entered():
	$AudioStreamPlayer.play()
func _on_button_quit_mouse_entered():
	$AudioStreamPlayer.play()
