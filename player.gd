extends CharacterBody3D

func _process(delta):
	rotation.y += -Input.get_axis("left", "right")*0.02
	velocity += -0.1*get_global_transform().basis.z*Input.get_axis("down", "up")
	velocity *= 0.95
	move_and_slide()
