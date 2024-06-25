extends RigidBody3D

@onready var car_mesh = $MeshInstance3D
@onready var ground_ray = $MeshInstance3D/RayCast3D
var sphere_offset = Vector3(0, -1.0, 0)
var acceleration = 50
var steering = 21.0
var turn_speed = 5
var turn_stop_limit = 0.75

func _ready():
	ground_ray.add_exception(self)

func _physics_process(_delta):
	add_constant_central_force(0.05*-car_mesh.global_transform.basis.z * Input.get_axis("down", "up"))

func _process(delta):
	car_mesh.global_rotation = Vector3.ZERO
	car_mesh.global_rotation.y = Input.get_axis("right", "left")
