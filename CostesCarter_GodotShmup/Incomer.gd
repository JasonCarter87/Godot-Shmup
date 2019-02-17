extends Node2D

var health = 3
var frozen = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(self.position.y < 250 && frozen == false):
		self.position.y += 2
	pass
func area_entered(otherArea):
	if otherArea.name == "ProjectileArea":
		self.health -= 1
		if self.health < 1:
			global.score += 10
			go.destroy(self)
			global.incomers -=1
			if frozen == true:
				global.frozenIncomers -=1
	 	#print("Yikes thats a collision")
	print(global.score)
	if otherArea.name == "ColdArea":
		if frozen == false:
			frozen = true
			global.frozenIncomers+=1
			$"Heated".visible = false
			$"Frozen".visible = true
	
	if otherArea.get_parent().name == "Player":
		print("Game Over")
		global.isGameOver = true
	


func _on_Timer_timeout():
	if(self.position.y == 250 && frozen == false):
		go.spawn_instance("IncomerProjectile", self.position.x, self.position.y)
	pass # Replace with function body.
