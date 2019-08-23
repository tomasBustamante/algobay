as yet unclassified
test07CuponDescuento
| aBay producto1 cupon20Porciento compra precio |

aBay := AlgoBay new.

producto1 := aBay agregarProducto: 'Zapatilla Nike Air' conPrecio: 2000.

compra := aBay crearNuevaCompraConEnvio.

cupon20Porciento := aBay crearCuponConPorcentaje: 20.
aBay agregarCupon: cupon20Porciento enCompra: compra.

aBay agregar: producto1 enCompra: compra.

precio := aBay getPrecioTotalDe: compra.

self should: (precio = ((2000 + 100) * 0.8)).
