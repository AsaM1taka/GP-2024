extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

const SPEED = 500.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func print_stuff():
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("rotation degree", rad_to_deg(rotation))
	DebugDraw2D.set_text("x", transform.x)
	DebugDraw2D.set_text("y", transform.y)
	DebugDraw2D.set_text("global x", global_transform.x)
	DebugDraw2D.set_text("global y", global_transform.y)
	DebugDraw2D.set_text("velocity", velocity)
	
func _process(delta: float) -> void:
	print_stuff()
	
func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	
	var to_player

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel
	
	
	if Input.is_action_pressed("fire"):
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		b.global_rotation = bullet_spawn_point.global_rotation
		get_parent().add_child(b)
	
	move_and_slide()
