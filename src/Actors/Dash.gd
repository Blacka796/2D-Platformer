extends Node2D

#Dash not working
onready var timer = $dashTimer

func star_dash(dur):
	timer.wait_time = dur
	timer.start()
	
func is_dashing():
	return !timer.is_stopped()
