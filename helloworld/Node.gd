extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"



func _ready():
	emit_signal("my_signal")
	$Timer.connect("timeout", self, "_on_Timer_timeout")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Timer_timeout():
	$Sprite.visible = !$Sprite.visible


signal my_signal
