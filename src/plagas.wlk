class Plaga {
	var poblacion
	method transmiteEnfermedades() = poblacion >= 10
}


class Cucaracha inherits Plaga {
	var pesoPromedioBicho
	
	method nivelDeDanio() = poblacion / 2
	
	override method transmiteEnfermedades(){
		return super() and pesoPromedioBicho >= 10
			//Cuando se hace referencia a super busca el metodo implementado
			//En la superClase que corresponde a la clase
			//En este caso super() corresponde a transmiteEnfermedades() de Plaga
	}
}

class Pulgas inherits Plaga {
	method nivelDeDanio() = poblacion * 2
	
}

class Garrapatas inherits Pulgas {
	
}

class Mosquitos inherits Plaga {
	method nivelDeDanio() = poblacion 
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0
}