extends VehicleBody3D

func _process(delta):
	engine_force = Input.get_action_strength("up") * 500
	brake = Input.get_action_strength("down") * 5
	steering = move_toward(steering, -Input.get_axis("right", "left"), delta)
	apply_torque(-100 * rotation.z * Vector3.FORWARD)
