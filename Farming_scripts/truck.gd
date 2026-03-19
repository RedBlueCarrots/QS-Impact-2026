extends Area2D

var wheat = 0

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("wheat"):
		wheat += 1
	body.queue_free()
