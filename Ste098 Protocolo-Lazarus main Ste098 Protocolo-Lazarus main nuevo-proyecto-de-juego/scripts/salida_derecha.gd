extends Area2D

@export var next_scene_path : String  # Ruta de la escena a cargar, ejemplo: "res://scenes/levels/sala_2.tscn"
var player_inside := false

# Cuando el Player entra al área
func _on_body_entered(body):
	if body.is_in_group("player"):  # Mejor usar grupos
		player_inside = true

# Cuando el Player sale del área
func _on_body_exited(body):
	if body.is_in_group("player"):
		player_inside = false

# Revisar cada frame si el jugador presiona interact
func _process(delta):
	if player_inside and Input.is_action_just_pressed("interact"):
		if next_scene_path != "":
			call_deferred("_change_scene")
		else:
			print("Error: next_scene_path no está asignada!")

# Cambio de escena diferido
func _change_scene():
	get_tree().change_scene_to_file(next_scene_path)
