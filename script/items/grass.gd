extends Sprite2D

@export var frame_speed: float = 10.0 # Gawin mong 8, 10, o 12. Basta pantay ang takbo.
var time_passed: float = 0.0

func _process(delta):
	time_passed += delta
	
	if time_passed >= (1.0 / frame_speed):
		time_passed = 0.0
		
		frame += 1
		
		if frame >= hframes * vframes:
			frame = 0 
