extends Control

var pressed: bool

onready var normal = $normal
onready var inverse = $pressed
onready var toggle = $toggled
var toggled = 0
var mouseOver = false

func _input(event):
	if Input.get_action_strength("f1") + Input.get_action_strength("f2") + float(Input.is_action_just_pressed("r")) == 3:
		toggled += 1 
	
	if Input.get_action_strength("CapsLock") == 1: pressed = true; else: pressed = false

func _physics_process(delta):
	if Input.is_action_just_pressed("CapsLock"):
		toggled += 1
	
	if toggled % 2 == 1: toggle.visible = true
	else: toggle.visible = false
	
	if pressed == true: 
		normal.visible = false
		inverse.visible = true
	else:
		normal.visible = true
		inverse.visible = false
