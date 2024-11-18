extends Node2D

var i = 0

func _draw() -> void:
	print("draw called: " + str(i))
	var r = get_viewport_rect()
	var h = r.size.x / 2
	var q = r.size.y / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	
	var p = get_viewport().get_mouse_position()
	print(p)
	if p.x < h and p.y < q: 
		draw_rect(Rect2(0, 0, h, q), Color.RED, true, 10, true)
	elif p.x < q and p.y > q:
		draw_rect(Rect2(0 ,0, h, q), Color.BLUE_VIOLET, true, 10, true)
	elif p.x > h and p.y < q:
		draw_rect(Rect2(h ,0, h, q), Color.SEA_GREEN, true, 10, true)
	else:
		draw_rect(Rect2(h, q, h, q), Color.BLACK, true, 10, true)
		

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
