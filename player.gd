extends RigidBody3D

@onready var car_mesh = $MeshInstance3D

func _physics_process(_delta):
	add_constant_central_force(0.05*-car_mesh.global_transform.basis.z * Input.get_axis("down", "up"))
	add_constant_torque(0.1*Vector3(0, Input.get_axis("right", "left"), 0))

func _process(delta):
	car_mesh.global_rotation.x = 0
	car_mesh.global_rotation.z = 0
