extends player_pro

func _ready():
	#给差异化属性赋值
	button_up = "player1_up"#与player2使用不同的按键
	button_down ="player1_down"#与player2使用不同的按键
	ball_x = 2#与player2的加速度相反

#func _physics_process(delta):
	#for i in get_overlapping_areas():
		#if i.is_in_group("Ball"):
			#i.vec.x =2#设置速度为5
	#var y1 = Input.get_action_strength("player1_up")*5#获取按键信号，为float类型,5为速度
	#var y2 = Input.get_action_strength("player1_down")*5
	#var y3 = position.y-y1+y2
	#if y3>25:#设置上下限
		#if y3<623:
			#position.y = position.y-y1+y2
	

