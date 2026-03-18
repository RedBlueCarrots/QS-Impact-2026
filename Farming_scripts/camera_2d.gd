extends Camera2D

const SPEED = 300

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	handleMovement(delta)

func handleMovement(delta: float) -> void:
	if Input.is_action_pressed("left"):
		if position.x > 288:
			position.x -= delta * SPEED
	if Input.is_action_pressed("right"):
		if position.x < 1152-288:
			position.x += delta * SPEED
