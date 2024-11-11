extends CharacterBody2D

@export var speed = 200

@export var explosion_scene:PackedScene

@onready var laser:Node2D=$laser

@onready var bug = $"../bug"

var can_move = true

signal hit

func _ready():
	laser.visible = false

func _process(delta):
	if Input.is_action_pressed("fire"):
		can_move = false
		
		var p = Vector2.ZERO
		laser.set_point_position(0, p)

		var p1 = Vector2.UP * 500
		laser.set_point_position(1, p1)
		# Make the laser visible to the bug
		$laser/laser_area.monitorable = true
		laser.visible = true						
	else:
		$laser/laser_area.monitorable = false
		laser.visible = false
		can_move = true
		
func _physics_process(delta):
	can_move = true
	if can_move:
		var r = get_viewport_rect()	
		var f = Input.get_axis("left", "right")
		velocity.x = f * speed
		move_and_slide()

		if global_position.x > r.size.x - 25:
			global_position.x = r.size.x - 25
		if global_position.x < 25:
			global_position.x = 25

func _on_area_2d_area_entered(area):	
	var explosion = explosion_scene.instantiate()
	explosion.global_position = global_position
	explosion.emitting = true
	get_parent().add_child(explosion)
	emit_signal("hit")
	pass # Replace with function body.
