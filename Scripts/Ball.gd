extends RigidBody2D

const SPEEDUP = 400
const MAXSPEED = 30000
func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	
	var bodies = get_colliding_bodies()
	
	for body in bodies:
		if body.is_in_group("Bricks"):
			get_node("/root/World").score += 5
			body.queue_free()
		if body.get_name() == "Paddle":
			var speed = get_linear_velocity().length()
			var direction = get_position() - body.get_node("Ancor").get_global_position()
			#print(direction)
			#print(direction.normalized())
			var velocity = direction.normalized()*min(speed + SPEEDUP *delta, MAXSPEED * delta)
			set_linear_velocity(velocity)
	
	if get_position().y > get_viewport_rect().end.y:
		queue_free()
		get_tree().change_scene("res://TitleScreen.tscn")
