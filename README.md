
## kb-test

gui for [hid-gadget-test](https://github.com/pelya/android-keyboard-gadget/blob/master/hid-gadget-test/hid-gadget-test) made in godot 4

support only keyboard emulation and probably wont ever support mouse or others.

tested clients:
* xioami redmi pad se, hyperos 1, android 14 
* xiaomi pad 6, AxionAOSP, android 15
* xioami pad 6, linux 6.12.2
* xioami pad 6, linux 6.14.2

tested hosts:
* redmi 10c, miui 14, android 13, unofficial kernelsu 11991 
## requirements:
* rooted android phone
* kernel 4.4 or newer(or whatever android-keyboard-gadget will work on)
* any cable that allows data transfer between devices

## how to use
* install [android-usb-gadget](https://github.com/tejado/android-usb-gadget)
* in the app press the + button
* select "Mouse & Keyboard"
* enable it
* download [hid-gadget-test](https://github.com/pelya/android-keyboard-gadget/blob/master/hid-gadget-test/hid-gadget-test?raw=true)
* move the executable to /data/local/tmp
* install [kb-test](https://github.com/SanekGamer007/kb-test/releases/download/v1.0.0/kb-test.apk)
* grant root permissions
* connect the other device and it should work

## help it no work aaa
if it doesnt work for whatever reason check if android-usb-gadget didnt disable the keyboard config

if the keyboard config is enabled - reconnecting the devices a few times until it works should do the trick.
