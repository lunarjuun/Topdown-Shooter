extends CharacterBody2D

var entered : bool
var speed : int = 100
var direction : Vector2

func _ready():
	var screen_rect = get_viewport_rect()
	entered = false
	#pick a direction for the entrance
	var dist = screen_rect.get_center() - position
	#check if goblin needs to move horizontally or vertically
	if abs(dist.x) > abs(dist.y):
		#move horizontally
		direction.x = dist.x
