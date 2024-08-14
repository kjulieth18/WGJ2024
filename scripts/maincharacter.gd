extends CharacterBody2D
#export muestra la variable en el inspector
@export var move_speed = 40
@export var gravity = 30
@export var jumpspeed=-400
@export var current_level:Node2D


func _physics_process(delta):
	var input_axis = Input.get_axis("move_left","move_right")
	velocity.x = input_axis * move_speed
	var input_h = Input.is_action_just_pressed("move_up")
	
	#se mueve en el cuadrante negativo de eje y,por tanto invertir -
	if is_on_floor():
		if input_h:
			velocity.y= jumpspeed
	velocity.y=velocity.y+(gravity*delta)
	move_and_slide()
	
	if input_axis <0:
		$AnimatedSprite2D.flip_h = true
	if input_axis >0:
		$AnimatedSprite2D.flip_h = false
	if velocity.x == 0:
		$AnimatedSprite2D.play("idle")
	else:
		$AnimatedSprite2D.play("walk")
		
#en objetos con fisica colliders usar 1:1 escala
	if velocity.y <0:
		$AudioStreamPlayer.play()
func eat_fruit():
	current_level.add_score(1)
