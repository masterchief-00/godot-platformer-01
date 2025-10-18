extends Area2D

@onready var win: AudioStreamPlayer2D = $win
@onready var youwin_text: Panel = $"../CanvasLayer/YouwinText"


func _on_body_entered(body: Node2D) -> void:
	Music.volume_db = -20
	youwin_text.show()
	Engine.time_scale = 0
	win.play()
	
