extends CharacterBody2D

func _physics_process(_delta):

	var speed = 300.0

	# Get the input direction
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	# Get focus input (shift)
	var focus = Input.is_action_pressed("focus")

	# Applies focus effects
	if(focus == true):
		speed = speed / 2

	velocity = direction * speed

	move_and_slide()
