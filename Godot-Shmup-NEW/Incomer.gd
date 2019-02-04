extends Node2D

var health = 1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(self.position.y < 250):
		self.position.y += 2
	pass
func area_entered(otherArea):
	if otherArea.name == "ProjectileArea":
		self.health -= 1
		global.score += 10
		if self.health < 1:
			go.destroy(self)
	 	#print("Yikes thats a collision")
	print(global.score)
	
	if otherArea.get_parent().name == "Player":
		print("Game Over")
		global.isGameOver = true
	


func _on_Timer_timeout():
	if(self.position.y == 250):
		go.spawn_instance("IncomerProjectile", self.position.x, self.position.y)
	pass # Replace with function body.
