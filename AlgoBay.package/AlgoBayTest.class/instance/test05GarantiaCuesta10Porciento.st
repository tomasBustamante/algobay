as yet unclassified
test05GarantiaCuesta10Porciento
| aBay producto1 compraSimpleConGarantia compraConEnvioYGarantia precioSimpleConGarantia precioConEnvioYGarantia |

aBay := AlgoBay new.

producto1 := aBay agregarProducto: 'Zapatilla Nike Air' conPrecio: 2000.

compraSimpleConGarantia := aBay crearNuevaCompraConGarantia.
compraConEnvioYGarantia := aBay crearNuevaCompraConEnvioYGarantia.

aBay agregar: producto1 enCompra: compraSimpleConGarantia.
aBay agregar: producto1 enCompra: compraConEnvioYGarantia.

precioSimpleConGarantia := aBay getPrecioTotalDe: compraSimpleConGarantia.
precioConEnvioYGarantia := aBay getPrecioTotalDe: compraConEnvioYGarantia.

self should: (precioSimpleConGarantia = (2000 * 1.1)).
self should: (precioConEnvioYGarantia = ((2000 * 1.1) + 100)).
