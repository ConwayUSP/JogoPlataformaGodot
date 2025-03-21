extends Area2D  

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var coletarMoeda: AudioStreamPlayer2D = $PickupSound  

func _on_body_entered(_body: Node2D) -> void:
	if animation_player.current_animation != "pickup":
		GameManager.add_point()
		if coletarMoeda != null:
			coletarMoeda.play()  
		animation_player.play("pickup")
