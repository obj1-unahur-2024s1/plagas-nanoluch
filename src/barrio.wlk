import elementos.*
class Barrio {
	const elementos = #{}
	method agregarElementos(listaElementos){elementos.addAll(listaElementos)}
	method eliminarElemento(elemento){elementos.remove(elemento)}
	method esCopado() {
		return 	elementos.count({x => x.esBueno()})
			> 	elementos.count({x => not x.esBueno()}
		)
	}
}