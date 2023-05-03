extends player_pro#继承player_pro

signal abc#自定义信号
func _ready():
	#var time = get_tree().create_timer(3)#计时器，时间长度为3秒，3秒后发出timeout信号
	#await time.timeout#await方法，等timeout信号发出后，再执行之后的内容
	#connect的参数1：名称，字符串类型 参数2：方法
	#self.connect("abc",Callable(self,"a"))#自己 连接 信号abc 与自己的 a函数绑定
	#Callable调用，对象，方法名
	#emit_signal("abc",1,2,3)#emit_signal发射信号
	
	#给差异化属性赋值
	button_up = "player2_up"#与player1使用不同的按键
	button_down ="player2_down"#与player1使用不同的按键
	ball_x = -2#与player1的加速度相反

	
#func a(a1,a2,a3):
	#print(a1,a2,a3)

#func _physics_process(delta):
	#for i in get_overlapping_areas():
		#pass

	#var y1 = Input.get_action_strength("player2_up")*5#获取按键信号，为float类型,5为速度
	#var y2 = Input.get_action_strength("player2_down")*5
	#var y3 = position.y-y1+y2
	#if y3>25:
		#if y3<623:
			#position.y = position.y-y1+y2





