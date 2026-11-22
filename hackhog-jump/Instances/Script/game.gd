extends Node2D

@onready var platform_container := $Platformcontainer
@onready var platform_initial_position_y = $Platformcontainer/Platformm.position.y

@export var platform_scene: PackedScene

func level_generator(amount):
	for items in amount:
		platform_initial_position_y -= randf_range(150,150)
		var new_platform = platform_scene.instantiate() as StaticBody2D
		new_platform.position =Vector2(randf_range(-250,250),platform_initial_position_y)
		platform_container.add_child(new_platform)
	pass
	
func _ready() -> void:
	level_generator(50)
