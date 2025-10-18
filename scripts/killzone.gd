extends Area2D

@onready var youdied_text: Panel = $"../CanvasLayer/YoudiedText"
@onready var death: AudioStreamPlayer2D = $"../Player/death"


func _on_body_entered(body: Node2D) -> void:
	youdied_text.show()
	death.play()
	Engine.time_scale = 0.2
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("restart"):
		Engine.time_scale = 1
		Music.volume_db = 0
		get_tree().reload_current_scene()
		
