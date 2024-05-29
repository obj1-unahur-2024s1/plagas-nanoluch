import plagas.*
object nivelProduccion {
	var property nivelDeProduccion = 1000
}

class Hogar {
	
	var nivelDeMugre
	var confort
	
	method nivelDeMugre() = nivelDeMugre
	method confort() = confort
	
	method esBueno() = nivelDeMugre <= confort *0.5
	
	method recibeAtaqueDe(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDanio()
		unaPlaga.sufrirEfectoDeAtaque()
	}
}

class Huerta {
	var produccion
	method produccion() = produccion
	method esBueno() = produccion > nivelProduccion.nivelDeProduccion()
	method recibeAtaqueDe(unaPlaga){
		produccion = 0.max(
				produccion - unaPlaga.nivelDeDanio()*0.1 
			- 	if(unaPlaga.transmiteEnfermedades()) 10 else 0
		)
	}
}

class Mascota {
	var salud
	method salud() = salud
	method esBueno() = salud > 250
	method recibeAtaqueDe(unaPlaga){
		salud = 0.max(
			salud - if(unaPlaga.transmiteEnfermedades()) unaPlaga.nivelDeDanio() else 0
		)
	}
}


