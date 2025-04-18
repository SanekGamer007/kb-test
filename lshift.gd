extends CheckButton


func _on_toggled(toggled_on: bool) -> void:
	kb.modifier("lshift", toggled_on)
