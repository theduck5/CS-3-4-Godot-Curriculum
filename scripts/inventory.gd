extends Node 

@export var inventory: Array[inventory_item]

var selected_item: int = 0

func print_inventory():
	if inventory.size()!= 0:
		print(inventory.get(selected_item).item_name)
		print(inventory.get(selected_item).description)
		print(inventory.get(selected_item).value)
		print(inventory.get(selected_item).amount)

func _process(delta: float) -> void:
	pass

func add_item():
	pass

func remove_item():
	pass
