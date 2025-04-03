extends Node3D

@export brick.scene =
@export var width:int = 30
@export var height:int = 10

func create_wall():
	for row in height:
		for col in width:
			var brick = brick.scene.instationate()
			
