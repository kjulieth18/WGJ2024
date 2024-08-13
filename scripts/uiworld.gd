extends Node2D
@onready var ui = %UI

var score=0

func add_score(value):
	score=score+value
	ui.update_score_label(score)


