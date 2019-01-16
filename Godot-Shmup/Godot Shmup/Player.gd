extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x = get_global_mouse_position().x
	#print("happens every frame")
	
	if Input.is_action_just_pressed("fire_projectile"):
		print("pew")
		var newProjectile = load("res://Projectile.tscn").instance()
		newProjectile.position = self.position
		self.get_parent().add_child(newProjectile)
	pass
