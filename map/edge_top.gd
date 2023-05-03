extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

@export var y = 5#@export把这个属性在检查其内使用,下墙体时应为-5
#var y =5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.vec.y =y
	pass
