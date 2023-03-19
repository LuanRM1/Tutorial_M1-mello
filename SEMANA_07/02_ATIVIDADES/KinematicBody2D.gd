extends KinematicBody2D
var motion = Vector2()
var speed = 200
var pontos = 0

func _process(delta):
	motion = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		motion.x = -speed

	elif Input.is_action_pressed("ui_right"):
		motion.x = speed		
		
	elif Input.is_action_pressed("ui_up"):
		motion.y = -speed
		
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
	motion = move_and_slide(motion)
	
