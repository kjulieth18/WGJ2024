extends Node2D
@onready var ui = %UI

var score=0

func add_score(value):
	score=score+value
	ui.update_score_label(score)

#el sonido se realizo 1componer progresion armonica en loop, 
#2voicing 3 pasar a programa de notacion musical, 
#4 exportar en midi y llevar a DAW reaper 
#5 aplicar sfx virtual instrument LABS de spitfire. 
#y exportar al audiostreamplayer 
# cambios se agregaron portales que permiten cambio de posicion del jugador y evitan que salga del borde de la escena.
#se redujo tamaño de tilemap/tileset terreno
#tilemap2 es para decoracion y cuadros de dialogo
#se añadio escena de controles
