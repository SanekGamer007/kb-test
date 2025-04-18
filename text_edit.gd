extends TextEdit

func _on_text_changed() -> void:
	kb.sendkey(text)
	text = ""
