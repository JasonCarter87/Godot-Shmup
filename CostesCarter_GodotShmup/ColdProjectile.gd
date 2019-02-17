extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func area_entered(otherArea):
	if otherArea.name == "IncomerArea":
		go.destroy(self)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y -=10
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
