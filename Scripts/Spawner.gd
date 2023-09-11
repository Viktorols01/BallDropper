extends Node2D

@export var reload = 60

var henrik = preload("res://Instances/Balls/HenrikBall.tscn")
var acc = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	acc+=1
	if (acc%reload==0):
		var ball = henrik.instantiate()
		ball.position = position
		var a = randf()*2*PI
		var speed = ball.mass*500*Vector2(cos(a), sin(a))
		ball.linear_velocity = speed
		ball.position += ball.linear_velocity*delta
		get_tree().get_root().add_child(ball)
