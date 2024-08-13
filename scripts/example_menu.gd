extends Control

func _ready():
	pass
#colocar funcion ready para evitar bugs
func _on_button_play_pressed():
	print("play button pressed")
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	
func _on_button_credits_pressed():
	print("credit button pressed")
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_button_quit_pressed():
	print("quit button pressed")
	get_tree().quit()
	
func _on_button_play_mouse_entered():
	print("play hover")
	$AudioStreamPlayer.play()
func _on_button_credits_mouse_entered():
	print("credits hover")
	$AudioStreamPlayer.play()
func _on_button_quit_mouse_entered():
	print("quit hover")
	$AudioStreamPlayer.play()
