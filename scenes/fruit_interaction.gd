extends Area2D

var tomada =false
	
func _on_body_entered(body):
	if body.name == "Wolf":
		if not tomada:
			tomada=true
			$AnimatedSprite2D.play("fruit_collected")
			await $AnimatedSprite2D.animation_finished
			visible=false
			
		print(body)
	pass # Replace with function body.
