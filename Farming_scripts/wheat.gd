extends Area2D

var whet = preload("res://Farming assets/WheatBundle.tscn")
var remain = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func eat_wheat():
	remain -= 1
	if remain < 1:
			if remain == 0:
				get_node("Node2D").queue_free()
			return false
	return true

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select") and remain > 0:
		remain -= 1
		var instance = whet.instantiate()
		instance.position = position
		get_tree().root.add_child(instance)
		if remain == 0:
			get_node("Node2D").queue_free()
