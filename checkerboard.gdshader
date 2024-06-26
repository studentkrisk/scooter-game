shader_type spatial;

void vertex() {
	
}

void fragment() {
	int n = 250;
	if ((int(round(UV.x * 1.5 * float(n))) % 2 == 0) == (int(round(UV.y * float(n))) % 2 == 0)) {
		ALBEDO = vec3(1, 1, 1);
	} else {
		ALBEDO = vec3(0.1, 0.1, 0.1);
	}
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
