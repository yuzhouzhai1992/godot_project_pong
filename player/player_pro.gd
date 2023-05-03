class_name player_pro 

extends Area2D

var button_up:String =""#定义有差异化的属性
var button_down:String =""#定义有差异化的属性
var ball_x:int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.vec.x = ball_x#定义有差异化的属性
	var y1 =Input.get_action_strength(button_up)*5
	var y2 =Input.get_action_raw_strength(button_down)*5
	var y3 =position.y-y1+y2
	if y3>16&&y3<630:
		position.y =position.y-y1+y2
	pass

func _on_area_entered(area):#当有其他节点进入此Area2D时，此信号发射，与它绑定的函数也会被触发
	if area.is_in_group("Ball"):
		#get_node("sound").play()#直接这样写也可以
		#var a =get_node("sound")#找到相应节点
		#a.play()#播放音乐
		#$sound.play()#简写方法
		get_child(2).play()#通过找到子节点来进行操作（第三个为2）
		get_parent()#获取父节点
		self.get_parent()#同上，只是一般调用时全都省略了self
		get_node("..")#同上，获取父节点
			
		var a = get_node("sound")#功用同上
		a.get_child(0)
			
		get_node("sound/sound_child")#获取本节点的子节点
		get_children()#获取所有直接子节点
		#area.vec.x =-2#设置速度为5
	pass # Replace with function body.

#场景内节点的协调工作——get_node
#一、场景内的节点的组织工作
#①使用场景内根节点的脚本组织场景内节点工作
#使用脚本为节点拓展功能是一个非常常见的操作。但脚本过多会使得文件混乱。应尽可能减少一个场景内脚本文件的数目。因此一般的场景只在根节点添加脚本
#要在一个脚本内控制若干个节点的分工合作
#②当小球接触玩家2的球拍时，球拍发出响声
#本质：在Area2D节点的脚本内命令声音节点工作
#前提：需要在Area2D脚本中获取声音节点对象
#操作：声音节点对象调用播放音乐的函数

#二、get_node()与相关函数用法展示
#①获取直接子节点
#get_child()
#②获取直接父节点
#get_parent()
#get_node("..")
#③获取多级子/多级父节点
#/
#④获取所有直接子节点
#get_children()

#三、get_node的优点与缺陷
#①优点
#可以直接获取到对象，然后调用对象内部方法或访问对象内部变量。操作与逻辑简便快捷
#②缺陷
#使用时必须知道子节点的名称
#使用get_node获取对象并直接调用对象内部方法或访问变量，如果对象、函数或方法不存在，程序会直接崩溃报错，对分块测试不友好
