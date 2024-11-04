extends Sprite2D

@export var time = 5
@export var speed = 10
@onready var player = $"../Playerr"

func _ready() -> void:
	
	var a:float = 10/17
	var b:float

	b = a * 17.0
	print(b)
	
	pass
	
var tot_time:float = 0
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	
	if to_player.length() > 0.1:

		DebugDraw2D.set_text("Dist to player", to_player.length())
	
		to_player = to_player.normalized()
		DebugDraw2D.set_text("NORM to player", to_player.length())
		
		global_position = global_position + to_player * speed * delta
		tot_time += delta
		DebugDraw2D.set_text("total time", tot_time)
		pass
	
	
	
