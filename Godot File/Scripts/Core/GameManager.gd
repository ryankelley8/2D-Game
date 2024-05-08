extends Node

signal gained_coins(int)
signal level_beaten()

var completed_checkpoints = []
var checkpoints_to_complete = 3

var coins : int
var score : int = 0

var current_checkpoint : Checkpoint

var player : Player

func respawn_player():
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func gain_coins(coins_gained:int):
	coins += coins_gained
	emit_signal("gained_coins", coins_gained)

func win():
	emit_signal("level_beaten")


