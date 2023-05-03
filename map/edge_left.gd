extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):#每刷新进行一次(由于物理引擎属性和屏幕刷新不同步，可能会在每次刷新时运行多次)
func  _physics_process(delta):#物理引擎每刷新运行一次
	for i in get_overlapping_areas():#get_overlapping_areas返回一个array的数组
		if i.is_in_group("Ball"):
			i.reset()
	pass

