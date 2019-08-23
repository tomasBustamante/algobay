as yet unclassified
getPrecioTotal

|total|

total := 0.

productos do: [ :producto |
	total := total + producto getPrecio.
].

adicionales do: [ :adicional |
	total := adicional modificarPrecio: total.
].

total := cupones modificarPrecio: total.

^ total.