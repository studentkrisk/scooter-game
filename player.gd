extends VehicleBody3D

func _process(delta):
	engine_force = Input.get_axis("down", "up") * 12000
	brake = Input.get_action_strength("down") * 50
	steering = move_toward(steering, Input.get_axis("right", "left") * deg_to_rad(20), delta)
	print(steering)
