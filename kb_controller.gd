extends Node
var LShift: bool
var debug: bool = false
var rooted: bool

func _ready() -> void: # Root check
	var output = OS.execute("su", [])
	if output == 0:
		rooted = true
		return
	else:
		OS.alert("Unable to find the su binary.\nPlease make sure that you gave the app root privileges.", "No root detected.")
		rooted = false
func modifier(key: String, ison: bool):
	print(key, ison)
	if ison == true:
		if key == "lshift":
			LShift = true
	else:
		if key == "lshift":
			LShift = false


func sendkey(key: String):
	if not rooted:
		return
	var output = []
	var keytosend: String
	if LShift == false:
		keytosend = key
	else:
		keytosend = "left-shift " + key
	if debug == false:
		OS.execute("su", [
		"-c", 
		"echo", 
		keytosend, 
		"|", 
		"/data/local/tmp/hid-gadget-test", 
		"/dev/hidg0",
		"keyboard"
		], output)
	else:
		OS.execute("su",[ # debug
		"-c",
		"echo",
		keytosend,
		">>",
		"/data/local/tmp/test.txt"
		], output)
	print_debug("prompt: ", "su -c echo ", keytosend, " >> /data/local/tmp/test.txt", " output:", output)
