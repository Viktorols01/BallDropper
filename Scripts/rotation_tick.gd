extends StaticBody2D

@export var speed = -5
@export var period = 40
@export var time = 10
var frame = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	frame += 1
	if (frame % period <= time):
		_rotate(speed, delta)
	else:
		_rotate(0, delta)

func _rotate(angular_velocity, delta):
	constant_angular_velocity = angular_velocity
	rotation += constant_angular_velocity*delta
