@tool
extends GridMap


func _enter_tree():
	pressed.connect(clicked)


func clicked():
	print("You clicked me!")
