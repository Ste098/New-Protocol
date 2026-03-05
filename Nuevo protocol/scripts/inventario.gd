extends Control

func actualizar_inventario(inventario: Dictionary):
	var contenedor = $GridContainer
	contenedor.clear() # Limpia ítems anteriores
	
	for nombre in inventario.keys():
		var cantidad = inventario[nombre]
		var boton = Button.new()
		boton.text = nombre + " x" + str(cantidad)
		boton.connect("pressed", Callable(self, "_usar_objeto").bind(nombre))
		contenedor.add_child(boton)

func _usar_objeto(nombre: String):
	print("Usaste el objeto: ", nombre)
	# Aquí defines qué pasa al usarlo (curar, abrir puerta, etc.)
