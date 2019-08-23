as yet unclassified
test02GetProducto
| aBay producto1 |

aBay := AlgoBay new.

aBay agregarProducto: 'Moto 5G' conPrecio: 4399.

producto1 := aBay getProducto: 'Moto 5G'.

self shouldnt: (producto1 = nil).
