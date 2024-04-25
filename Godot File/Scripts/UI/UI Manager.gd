extends CanvasLayer



func update_coin_display(gained_coins):
	$"Coin Display".text = str(GameManager.coins)
	
# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.gained_coins.connect(update_coin_display)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
