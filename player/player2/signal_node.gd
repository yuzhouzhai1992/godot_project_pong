extends Node

signal abc
# Called when the node enters the scene tree for the first time.
func _ready():
	emit_signal("abc",1,2,3)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
