extends Timer

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_IncomerSpawnTimer_timeout():
	var newIncomer = load("res://Incomer.tscn").instance()
	newIncomer.position.x = rand_range(0, 480)
	newIncomer.position.y = -50
	self.get_parent().add_child(newIncomer)
	pass # Replace with function body.
