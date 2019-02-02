extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func area_entered(otherArea):
	if otherArea.get_parent().name == "Player":
		go.destroy(self)
		print("Game Over")
		global.isGameOver = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y +=5
	pass