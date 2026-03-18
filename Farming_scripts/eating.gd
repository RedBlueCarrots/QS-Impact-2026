extends Area2D

var is_chewing = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var list = get_overlapping_bodies()
	
	for area in list:
		if area.is_in_group("wheat") and not is_chewing:
			area.queue_free()
			is_chewing = true
			get_parent().get_node("Timer").start()
	
	list = get_overlapping_areas()
	
	for area in list:
		if area.is_in_group("wheat") and not is_chewing:
			var ate_wheat = area.eat_wheat()
			if ate_wheat:
				is_chewing = true
				get_parent().get_node("Timer").start()



func _on_timer_timeout() -> void:
	is_chewing = false
