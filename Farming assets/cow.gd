extends RigidBody2D

#var dragging = false
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		#if event.is_pressed():
			#dragging = true
			#freeze = true # Disable physics
		#else:
			#dragging = false
			#freeze = false # Re-enable physics
#
#func _physics_process(delta: float) -> void:
	#if dragging:
		#position = get_global_mouse_position()
