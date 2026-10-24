extends Label
@onready var timer: Timer = $Timer

var countdown: int = 15
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = str(countdown)
	timer.start()
	timer.wait_time = 1
	timer.autostart = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout() -> void:
	if countdown > 0:
		countdown -= 1
		text = str(countdown)
		#print(countdown)
	else:
		timer.stop()
		get_tree().reload_current_scene()
		#print("dead")
