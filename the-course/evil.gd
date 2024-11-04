extends Sprite2D

@export var speed = 10
@onready var playerr = $".../playerr"

func _ready() -> void:
	
	var a:float = 10/17
	var b:float
	
	b = a * 17.0
	print(b)
	
	pass

func _process(delta: float) -> void:
	
	var to_playerr: Vector2 = playerr.global_position - global_position
	
	DebugDraw2D.set_text("Dist to player", to_playerr.length())
	
	to_playerr = to.playerr.normalised()
	DebugDraw2D.set_text("NORM to player", to_playerr.length())
	
	
	
	time = distance % speed
	
	
