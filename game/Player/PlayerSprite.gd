extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	# Gets input for direction to face
	var horizontal_facing = Input.get_action_strength("aim_right") - Input.get_action_strength("aim_left")

	# Applies facing direction
	if horizontal_facing > 0:
		# Facing right, set scale.x to 1
		scale.x = 1
	elif horizontal_facing < 0:
		# Facing left, set scale.x to -1 to flip horizontally
		scale.x = -1
