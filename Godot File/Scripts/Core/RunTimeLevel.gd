extends Node
class_name RunTimeLevel

@onready var level = name

var max_score = 0
var max_coins = 0
var completed_checkpoints = []
var checkpoints_to_complete = 3

func _ready():
	GameManager.level_beaten.connect(beat_level)
	set_values()

func set_values():
	for node in get_children():
		if node is Coin:
			max_score += node.score
			max_coins += node.coins

func check_level_completion(checkpoint):
	completed_checkpoints.append(checkpoint)
	print(completed_checkpoints)
	if completed_checkpoints.size >= checkpoints_to_complete:
		print("Level Complete")

func beat_level():
	pass
