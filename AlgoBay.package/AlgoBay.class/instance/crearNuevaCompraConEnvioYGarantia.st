as yet unclassified
crearNuevaCompraConEnvioYGarantia
	
| compra |

compra := self crearNuevaCompraConGarantia.
compra agregarAdicional: Envio new.

^ compra.
