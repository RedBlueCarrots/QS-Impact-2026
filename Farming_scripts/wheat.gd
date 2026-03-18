extends Area2D

var whet = preload("res://Farming assets/WheatBundle.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("select"):
		var instance = whet.instantiate()
		instance.position = position
		get_tree().root.add_child(instance)
		print("weheat!")
