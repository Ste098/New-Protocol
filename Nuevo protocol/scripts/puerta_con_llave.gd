extends Area2D

var tiene_llave: bool = false

@export var necesita_llave: bool = true
@export var escena_destino: String = ""


var jugador_dentro: bool = false

func _ready() -> void:
	connect("body_entered", Callable(self, "_on_body_entered"))
	connect("body_exited", Callable(self, "_on_body_exited"))

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		jugador_dentro = true

func _on_body_exited(body: Node) -> void:
	if body.is_in_group("player"):
		jugador_dentro = false

func _process(delta: float) -> void:
	if jugador_dentro and Input.is_action_just_pressed("interact"):
		var jugador = get_tree().get_nodes_in_group("player")[0]
		if necesita_llave and not jugador.has_key:
			mostrar_mensaje("Necesitas una llave")
		else:
			get_tree().change_scene_to_file(escena_destino)

func mostrar_mensaje(texto: String) -> void:
	var dialogo = get_node("/root/Dialogo") # Asegúrate de tener un nodo para mostrar mensajes
	dialogo.mostrar(texto)
	
	
	
