extends CharacterBody3D

func _process(delta):
	velocity += -transform.basis.z * Input.get_axis("down", "up")
	velocity *= 0.8
	move_and_slide()
