extends StaticBody3D

signal toggle_inventory(external_inventory_owner)

@onready var animation_player = $AnimationPlayer
@export var inventory_data: InventoryData

var chestOpen: bool = false

func player_interact() -> void:

	toggle_inventory.emit(self)

func toggleChest() -> void:
	if chestOpen:
		animation_player.play("Chest_Close")
		chestOpen = false
	else:
		animation_player.play("Chest_Open")
		chestOpen = true
