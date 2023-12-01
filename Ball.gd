extends RigidBody2D

const speedModif = 100;

var x = 0;

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_A:
			x = -1 * speedModif;
		elif event.keycode == KEY_D:
			x = 1 * speedModif;
		else :
			x = 0;

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	linear_velocity = Vector2(x, linear_velocity.y);
