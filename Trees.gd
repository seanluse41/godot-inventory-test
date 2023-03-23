extends Node

@export var numOfTrees: int = 200
const tree = preload("res://scenery/tree_fruit.tscn")

var rng = RandomNumberGenerator.new()

func randomizedLauncher() -> Vector3:
	var x = rng.randi_range(-250, 250)
	var y = 0
	var z = rng.randi_range(-250, 250)
	return Vector3(x, y, z)
	

func _ready():
	for trees in numOfTrees:
		var newTree = tree.instantiate()
		get_tree().root.add_child.call_deferred(newTree)
		newTree.global_position = randomizedLauncher()
