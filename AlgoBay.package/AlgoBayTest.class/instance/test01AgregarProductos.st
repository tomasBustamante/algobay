as yet unclassified
test01AgregarProductos
| aBay producto1 |

aBay := AlgoBay new.

self should: (aBay cantidadDeProductos = 0).

producto1 := aBay agregarProducto: 'Spinner fluo' conPrecio: 83.

self should: (aBay cantidadDeProductos = 1).

self shouldnt: (producto1 = nil).
