extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var vec:Vector2 = Vector2(2,2)#斜向下移动，移速为3
#var vec:Vector2 = Vector2(5,0)#向右的移速为5
var init_position
# Called when the node enters the scene tree for the first time.
func _ready():#虚函数，当所有子节点都加入树后生效
	self.add_to_group("Ball")#加入group
	init_position = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#position = position + Vector2(1,0)#使position的X加1，Y加0
	position = position + vec
	#if position.x>500:
		#self.reset()#当x>500,调用reset函数
		#reset()#当x>500,调用reset函数
	pass

func reset():
	if vec.x>0:#小球在每次重启前判定一次方向，根据飞出边界时的方向判断哪位玩家得分
		CountScore.score1=CountScore.score1+1
	else :
		CountScore.score2=CountScore.score2+1
	position = init_position
