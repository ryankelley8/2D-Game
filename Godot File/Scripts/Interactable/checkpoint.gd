extends Node2D
class_name Checkpoint

@export var spawnpoint = false

var activated = false


func activate():
	GameManager.current_checkpoint = self
	activated = true
	$AnimationPlayer.play("Activated")
	pass
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	if area.get_parent() is Player && !activated:
		activate()
