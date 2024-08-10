extends CharacterBody2D
#export muestra la variable en el inspector
@export var move_speed = 40

#agrega booleano if true if false, si esta mirando a la derecha gira izquierda y viceversa
var is_facing_right = true


func _physics_process(delta):
	var input_axis = Input.get_axis("move_left","move_right")
	velocity.x = input_axis * move_speed
	move_and_slide()
	
	if input_axis <0:
		$Sprite2D.flip_h = true
#en objetos con fisica colliders usar 1:1 escala

#func _physics_process(delta):
#var input_axis = Input.get_axis("move_up","move_down")
#velocity.y = input_axis * move_speed
#move_and_slide()
