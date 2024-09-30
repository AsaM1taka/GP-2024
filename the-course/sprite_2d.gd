extends CharacterBody2D


@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D
const SPEED = 300.0
const JUMP_VELOCITY= -400.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("TURN_LEFT", "TURN_RIGHT")
	print(r)
	
	var rot = deg_to_rad(r * TURN_RATE * delta)
	
	var f = Input.get_axis("BACKWARDS", "FORWARD")
	
	var vel = transform.y * f * SPEED
	
	if Input.is_action_pressed("fire"):
	var b = bullet_scene.instantiate()
	add child(b)
	
	
	velocity = vel
	

	
	rotate(rot)
	move_and_slide()
