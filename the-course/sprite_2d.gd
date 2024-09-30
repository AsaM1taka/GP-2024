extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY= -400.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("TURN_LEFT", "TURN_RIGHT")
	print(r)
	
	var rot = deg_to_rad(r * TURN_RATE * delta)
	
	rotate(rot)
	move_and_slide()
