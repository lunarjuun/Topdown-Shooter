extends Node2D

@onready var main = get_node("/root/Main")

var goblin_scene :=preload("res://Scenes/goblin.tscn")
var spawn_points := []

func _ready():
	for i in get_children():
		if i is Marker2D:
			spawn_points.append(i)



func _on_timer_timeout() -> void:
	pass # Replace with function body.

	#pick random spawn point
	var spawn = spawn_points[randi() % spawn_points.size()]
	#spawns enemy
	var goblin = goblin_scene.instantiate()
	goblin.position = spawn.position
	main.add_child(goblin)
