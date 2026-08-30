class_name Paddle
extends Node2D

@export var _velocity: float
@export_custom(PROPERTY_HINT_INPUT_NAME, "loose_mode") var input_up: String
@export_custom(PROPERTY_HINT_INPUT_NAME, "loose_mode") var input_down: String

enum Direction {
	DOWN = 1,
	UP = -1,
	}

func _process(delta: float) -> void:
	if Input.is_action_pressed(input_up):
		move(Direction.UP, delta)

	if Input.is_action_pressed(input_down):
		move(Direction.DOWN, delta)


func move(direction: Direction, delta: float = 1.0) -> void:
	position.y += (_velocity * direction) * delta
