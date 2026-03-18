extends Control


var dragging = false

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			dragging = true
			get_parent().freeze = true # Disable physics
		else:
			dragging = false
			get_parent().freeze = false # Re-enable physics


func _physics_process(delta: float) -> void:
	if dragging:
		get_parent().position = get_global_mouse_position()
