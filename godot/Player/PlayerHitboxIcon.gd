extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	scale = Vector2(0,0)
	visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	# Displays and changes the size of the Hitbox Icon when focus (shift) is activated
	var focus = Input.is_action_pressed("focus")
	var PlayerHitboxSize = 0.676
	
	# Makes hitbox icon visible when in focus
	if (scale.x > 0):
		visible = true
		rotation_degrees += 1
	else:
		visible = false
	
	if(focus == true and scale.x < PlayerHitboxSize):
		scale.x += 0.1
		scale.y += 0.1
	elif (focus == false and scale.x > 0):
		scale.x -= 0.1
		scale.y -= 0.1
	
