class_name Paddle
extends Node2D

@export var _velocity: float

func _process(delta: float) -> void:
	up(delta)


func up(delta: float = 1.0) -> void:
	position.y -= _velocity * delta

