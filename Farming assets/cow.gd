extends RigidBody2D

#var dragging = false
#
## Called every frame. 'delta' is the elapsed time since the previous frame.

const SPEED = 30

func _physics_process(delta: float) -> void:
	var wheats = get_tree().get_nodes_in_group("wheat")
	
	var best_dist = 100000000000000
	var best_pos = null
	
	for wheat in wheats:
		if position.distance_to(wheat.position) < best_dist:
			best_dist = position.distance_to(wheat.position)
			best_pos = wheat.position

	if best_pos != null:
		var direction = position.direction_to(best_pos)
		position.x += direction.x * delta * SPEED
