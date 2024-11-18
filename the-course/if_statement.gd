extends Node2D

var i = 0

func _draw() -> void:
	print("draw called: " + str(i))
	var r = get_viewport_rect()
	var h = r.size.x / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	
	var p = get_viewport().get_mouse_position()
	print(p)
	if p.x < h:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.RED, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.BLUE_VIOLET, true, 10, true)
	else:
		draw_rect(Rect2(0 ,0, h, r.size.y), Color.BLUE_VIOLET, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.RED, true, 10, true)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
