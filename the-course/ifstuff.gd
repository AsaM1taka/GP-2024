extends Sprite2D

@export var speed = 180
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position.x += speed * delta
	
	var r = get_viewport_rect()
	if global_position.x > r.size.x:
		global_position.x += -speed * delta
	
	pass
