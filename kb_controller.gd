extends Node
var LShift: bool
var debug: bool = false

func modifier(key: String, ison: bool):
	print(key, ison)
	if ison == true:
		if key == "lshift":
			LShift = true
	else:
		if key == "lshift":
			LShift = false


func sendkey(key: String):
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
	print("prompt: ", "su -c echo ", keytosend, " >> /data/local/tmp/test.txt", " output:", output)
