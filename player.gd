extends VehicleBody3D

func _process(delta):
	engine_force = Input.get_action_strength("up") * 4000
	brake = Input.get_action_strength("down") * 50
	steering = Input.get_axis("right", "left") * 0.1
