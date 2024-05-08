extends Node2D
class_name Coin

@export var score = 10
@export var coins = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	GameManager.gain_coins(coins)
	queue_free()
