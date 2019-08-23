as yet unclassified
test06EnvioBonificadoEnComprasMayoresA5000
| aBay producto1 producto2 compra precio |

aBay := AlgoBay new.

producto1 := aBay agregarProducto: 'Zapatilla Nike Air' conPrecio: 2000.
producto2 := aBay agregarProducto: 'Moto 5G' conPrecio: 4000.

compra := aBay crearNuevaCompraConEnvioYGarantia.

aBay agregar: producto1 enCompra: compra.
aBay agregar: producto2 enCompra: compra.

precio := aBay getPrecioTotalDe: compra.

self should: (precio = ((6000 + 0) * 1.1)).
