extends CharacterBody2D

#variable to find player position
@onready var player = get_node("/root/World/Player")

#function to move towards player
func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 150
	move_and_slide()
