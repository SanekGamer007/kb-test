extends Panel

func _process(delta: float) -> void:
	if self.size != get_viewport().get_visible_rect().size:
		self.size = get_viewport().get_visible_rect().size
