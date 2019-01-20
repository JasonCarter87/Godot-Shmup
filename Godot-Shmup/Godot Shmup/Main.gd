extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"ScoreLabel".text = "Score: " + str(global.score)
	
	if global.isGameOver == true:
		$"GameOverSprite".visible = true
	
	if Input.is_action_just_pressed("restart_game") and global.isGameOver:
		go.restart_scene()
		global.score = 0
		global.isGameOver = false
		