extends BoxContainer
@export var nodestocheck: PackedStringArray = [
	"Arrows/leftdownright",
	"Arrows/up",
	"VBoxContainer/BoxContainer",
	"VBoxContainer/BoxContainer2",
]


func _ready() -> void:
	for node in nodestocheck:
		for button in get_node(node).get_children():
			button.pressed.connect(_on_button_pressed.bind(button.name))
	
func _on_button_pressed(button: String):
	kb.sendkey(button)
