extends GridMap

@export var slot_data: SlotData

const PICKUP = preload("res://item/pickup/pickup.tscn")

var used: bool = false
var rng = RandomNumberGenerator.new()

func randomizedLauncher() -> Vector3:
	var x = rng.randf_range(global_position.x - 2, global_position.x + 2)
	var y = 2
	var z = rng.randf_range(global_position.z - 2, global_position.z + 2)
	return Vector3(x, y, z)
	

func player_interact() -> void:
	if not used:
		for i in 10:
			var pickup = PICKUP.instantiate()
			pickup.slot_data = slot_data
			print("spawned")
			get_tree().root.add_child(pickup)
			pickup.set_global_position(randomizedLauncher())
			used = true
	else:
		pass
