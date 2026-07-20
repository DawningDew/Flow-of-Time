extends CanvasLayer

var textbox_visible = false
@onready var speaker_label: Label = $Textbox/DialogText/SpeakerLabel
@onready var dialog_text: TextEdit = $Textbox/DialogText

var speaker_name:= 0
var text:= 1
var current_line: int = 0

#func _input(event: InputEvent) -> void:
#	if Input.is_action_just_pressed("test"):
#		if textbox_visible == false:
#			visible = true
#			textbox_visible = true
#		else:
#			visible = false
#			textbox_visible = false

func _ready() -> void:
	print(speaker_label)

func open_dialog(dialog):
	if textbox_visible == false:
		visible = true
		textbox_visible = true
	print(speaker_label)
	speaker_label.text = dialog.dialog_lines[current_line][speaker_name]
	dialog_text.text = dialog.dialog_lines[current_line][text]
