as yet unclassified
test08CuponesNoSonAcumulablesValeElMayor
| aBay producto1 cupon20Porciento cupon25Porciento cupon30Porciento compra precio |

aBay := AlgoBay new.

producto1 := aBay agregarProducto: 'Zapatilla Nike Air' conPrecio: 2000.

compra := aBay crearNuevaCompra.

cupon20Porciento := aBay crearCuponConPorcentaje: 20.
cupon25Porciento := aBay crearCuponConPorcentaje: 25.
cupon30Porciento := aBay crearCuponConPorcentaje: 30.

aBay agregarCupon: cupon20Porciento enCompra: compra.
aBay agregarCupon: cupon30Porciento enCompra: compra.
aBay agregarCupon: cupon25Porciento enCompra: compra.

aBay agregar: producto1 enCompra: compra.

precio := aBay getPrecioTotalDe: compra.

self should: (precio = (2000 * 0.7)).
