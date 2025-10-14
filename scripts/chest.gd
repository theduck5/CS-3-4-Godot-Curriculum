extends Area2D

@export var can_open: bool = true

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func animate_opening() -> void:
	$AnimatedSprite2D.play()

func _on_body_entered(body):
	if body is Player and can_open == true:
		print("Chest is open")
		$AnimatedSprite2D.play()
		can_open = false
	else:
				print("Chest already open")
##after open, stop playing animation
