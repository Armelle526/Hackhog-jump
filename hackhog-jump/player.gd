extends CharacterBody2D


func _ready() -> void:
	print("Hello World!")


func _process(delta: float) -> void:
	velocity = Vector2(25,0)
	move_and_slide()
