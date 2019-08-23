as yet unclassified
agregarProducto: nombre conPrecio: precio

| p |

p := Producto new.

p setNombre: nombre.
p setPrecio: precio.

productos at: nombre put: p.

^ p.
