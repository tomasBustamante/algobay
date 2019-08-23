as yet unclassified
modificarPrecio: unPrecio 
	(unPrecio < 5000) ifTrue: [
		^ unPrecio + 100.
	].
	^ unPrecio.
