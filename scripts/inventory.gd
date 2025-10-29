extends Node 

@export var inventory: Array[inventory_item]

var selected_item: int = 0

func print_inventory():
	if selected_item >= inventory.size():
		selected_item = 0
	if selected_item < 0:
		selected_item = inventory.size() - 1
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
