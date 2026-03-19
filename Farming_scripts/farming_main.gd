extends Node2D

var time = 120

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	print("GAME OVER!")
	print("score")
	print(get_node("Truck").wheat)
	print("cows left")
	print(len(get_tree().get_nodes_in_group("cows")))


func _on_update_timeout() -> void:
	time -= 1
	get_node("Camera2D/HBoxContainer/Label").text = str(time)
