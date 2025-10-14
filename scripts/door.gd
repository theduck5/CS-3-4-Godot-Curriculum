extends AnimatableBody2D

@export var is_open: bool = true
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func lever(value):
	if value == 1:
		$AnimatedSprite2D.frame = 1
		collision_layer = 100
		$LightOccluder2D.visible = false
		if value == -1:
			$AnimatedSprite2D.frame = 0
			collision_layer = 1
			$LightOccluder2D.visible = true
