extends Area2D

@onready var cura_som: AudioStreamPlayer2D = $CuraSom
var quantidade_cura = 40  
func _on_body_entered(body: Node2D) -> void:
	if body is Player:  
		if cura_som != null:
			cura_som.play()   
		GameManager.heal(quantidade_cura)  
		queue_free() 
