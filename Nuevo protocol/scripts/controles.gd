extends CanvasLayer

func _on_action_pressed() -> void:
	$interact.modulate = Color( 1, 0.5, 0.5)
	


func _on_action_released() -> void:
	$interact.modulate = Color( 1, 1, 1)


func _on_right_pressed() -> void:
	$right.modulate = Color( 1, 0.5, 0.5)


func _on_right_released() -> void:
	$right.modulate = Color( 1, 1, 1)


func _on_left_pressed() -> void:
	$left.modulate = Color( 1, 0.5, 0.5)


func _on_left_released() -> void:
	$left.modulate = Color( 1, 1, 1)


func _on_inventario_pressed() -> void:
	$inventario.modulate = Color( 1, 0.5, 0.5)


func _on_inventario_released() -> void:
	$inventario.modulate = Color( 1, 1, 1)
