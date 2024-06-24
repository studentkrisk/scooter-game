extends RigidBody3D


var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
	var input_dir = 0.01*Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	apply_torque_impulse(Vector3(input_dir.y, 0, input_dir.x))
