as yet unclassified
test03CompraSimple
| aBay producto1 producto2 compra1 precio |

aBay := AlgoBay new.

producto1 := aBay agregarProducto: 'Zapatilla Nike Air' conPrecio: 2100.

aBay agregarProducto: 'Moto 5G' conPrecio: 4300.
aBay agregarProducto: 'Cable USB' conPrecio: 200.

producto2 := aBay getProducto: 'Moto 5G'.

compra1 := aBay crearNuevaCompra.

aBay agregar: producto1 enCompra: compra1.
aBay agregar: producto2 enCompra: compra1.

precio := aBay getPrecioTotalDe: compra1.

self should: (precio = 6400).