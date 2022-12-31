extends Control

var pressed: bool

onready var normal = $normal
onready var inverse = $pressed

func _input(event):
	if Input.get_action_strength("Ctrl") == 1: pressed = true; else: pressed = false

func _physics_process(delta):
	if pressed == true:
		normal.visible = false
		inverse.visible = true
	else:
		normal.visible = true
		inverse.visible = false
	
