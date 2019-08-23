as yet unclassified
test04EnvioCuesta100
| aBay producto1 compraSimple compraConEnvio precioSimple precioConEnvio |

aBay := AlgoBay new.

producto1 := aBay agregarProducto: 'Zapatilla Nike Air' conPrecio: 2000.

compraSimple := aBay crearNuevaCompra.
compraConEnvio := aBay crearNuevaCompraConEnvio.

aBay agregar: producto1 enCompra: compraSimple.
aBay agregar: producto1 enCompra: compraConEnvio.

precioSimple := aBay getPrecioTotalDe: compraSimple.
precioConEnvio := aBay getPrecioTotalDe: compraConEnvio.

self should: (precioConEnvio = (precioSimple + 100)).
