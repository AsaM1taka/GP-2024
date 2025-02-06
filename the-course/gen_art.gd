extends Node2D

var radius:float
var count:int


func _draw() -> void:
	var s = float(count)
	for i in range(s):
		draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.DARK_BLUE, 10)
	
	var theta_inc= 1
	var px = 0
	var py = 0
	var radius = 0
	var r = 0
	for i in range(s):
		var theta= theta_inc * i
		var x = sin(theta) * radius
		var y= cos(theta) * radius
		draw_line(Vector2(px,py), Vector2(x, y), Color.DARK_GREEN, 10)
		draw_circle(Vector2(x,y), 10, Color.HOT_PINK, false)
		px = x
		py = y
		r = r + 10
		
	pass
	
func _process(delta: float) -> void:
	queue_redraw()

func _on_num_slider_value_changed(value: float) -> void:
	count = value
	pass # Replace with function body.


func _on_rad_slider_value_changed(value: float) -> void:
	radius = value
	pass # Replace with function body.
