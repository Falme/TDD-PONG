extends GutTest

var _paddle: Paddle

func before_each():
	_paddle = autofree(Paddle.new())


func test_up_should_move_paddle_up() -> void:
	_paddle._velocity = 2

	for times in range(1,4):
		_paddle.move(_paddle.Direction.UP)
		assert_eq(_paddle.position.y, -(times*2.0), "paddle should have moved up")


func test_up_should_move_relative_to_delta_time() -> void:
	_paddle._velocity = 3

	_paddle.move(_paddle.Direction.UP)
	assert_eq(_paddle.position.y, -3.0, "paddle should have moved up")

	_paddle.move(_paddle.Direction.UP, 0.5)
	assert_eq(_paddle.position.y, -4.5, "paddle should have moved up")

	_paddle.move(_paddle.Direction.UP, 2)
	assert_eq(_paddle.position.y, -10.5, "paddle should have moved up")


func test_down_should_move_paddle_down() -> void:
	_paddle._velocity = 4
	
	for times in range(1,4):
		_paddle.move(_paddle.Direction.DOWN)
		assert_eq(_paddle.position.y, times*4.0, "paddle should have moved down")


func test_down_should_move_relative_to_delta_time() -> void:
	_paddle._velocity = 3

	_paddle.move(_paddle.Direction.DOWN)
	assert_eq(_paddle.position.y, 3.0, "paddle should have moved down")

	_paddle.move(_paddle.Direction.DOWN, 2)
	assert_eq(_paddle.position.y, 9.0, "paddle should have moved down")

	_paddle.move(_paddle.Direction.DOWN, 0.5)
	assert_eq(_paddle.position.y, 10.5, "paddle should have moved down")


