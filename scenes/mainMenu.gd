extends Control

var startSelected = false
var quitSelected = false

func _on_start_mouse_entered() -> void:
	startSelected = true

func _on_start_mouse_exited() -> void:
	startSelected = false


func _on_quit_mouse_entered() -> void:
	quitSelected = true

func _on_quit_mouse_exited() -> void:
	quitSelected = false

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and startSelected:
		get_tree().change_scene_to_file("res://scenes/mainWorld.tscn")
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and quitSelected:
		get_tree().quit()
