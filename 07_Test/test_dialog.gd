extends Node3D

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("test"):
		DialogManager.open_dialog(load("res://06_Dialogs/test_dialog.tres"))

func _ready() -> void:
	var res = load("res://06_Dialogs/test_dialog.tres")
	print(res)
