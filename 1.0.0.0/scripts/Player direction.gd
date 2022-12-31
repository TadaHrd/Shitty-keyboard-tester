extends Control

onready var rect = $TextureRect

func _physics_process(delta):
	var y = Input.get_action_strength("w") - Input.get_action_strength("s")
	var x = Input.get_action_strength("d") - Input.get_action_strength("a")
	
	if x == 0 and y == 0: rect.visible = false #Sorry for this #I can't say how sorry i am for this
	else:                                      #I know nesting is bad but i don't know how to make this
		rect.visible = true                #without nesting #Somebody please fix this
		if y == 1 and x == 0: rect.set_rotation_degrees(0)
		else:
			if y == 1 and x == 1: rect.set_rotation_degrees(45)
			else:
				if y == 0 and x == 1:  rect.set_rotation_degrees(90)
				else:
					if y == -1 and x == 1: rect.set_rotation_degrees(135)
					else:
						if y == -1 and x == 0: rect.set_rotation_degrees(180)
						else:
							if y == -1 and x == -1: rect.set_rotation_degrees(-135)
							else:
								if y == 0 and x == -1: rect.set_rotation_degrees(-90)
								else:
									if y == 1 and x == -1: rect.set_rotation_degrees(-45)
