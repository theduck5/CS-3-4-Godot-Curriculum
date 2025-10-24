extends npc

class_name merchant

@export var open: bool = true
@export var buyer: bool = false
@export var return_amount: float = 0.8

var talking: bool = false


func _physics_process(delta: float) -> void:
	super.movement(delta)
	if !talking:
		move_and_slide()


func _on_interact_body_entered(body: Node2D) -> void:
	if body is Player:
		talking = true
		var number = 0
		for x in inventory:
			print(inventory.get(number).item_name)
			number += 1



func _on_interact_body_exited(body: Node2D) -> void:
	if body is Player:
		talking = false
