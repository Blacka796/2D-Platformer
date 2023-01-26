extends CanvasLayer

#SWM, the new UI to show the bullet left
#Collect coins is = bullect
#use bullet will not influence total of coins
var bullet_collected = 0

onready var bullet_label = $Bullet

# Called when the node enters the scene tree for the first time.
func _ready():
	
	bullet_label.set_text(str(bullet_collected))
	var _player_path = get_node("/root/Game/Level/Player")
	_player_path.connect("collect_coin", self, "_collect_coin")
#SWM, renew the text of bullet
func _process(delta):
	bullet_label.set_text(str(bullet_collected))
	
#SWM, add 1 bueelt
func _collect_coin():
	bullet_collected += 1
