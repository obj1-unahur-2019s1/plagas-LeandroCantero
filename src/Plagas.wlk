class Plaga {
		var property poblacion
		
		method transmiteEnfermedad(){return poblacion >= 10}
		method danioAtaque(){return 0}
}

class PlagaDeCucarachas inherits Plaga{
	var property peso
	
	method pesoPromedio(){return peso/poblacion}
	override method transmiteEnfermedad(){return super() and self.pesoPromedio() >= 10}
	override method danioAtaque(){return poblacion/2}
	
}

class PlagaDePulgas inherits Plaga{
	override method danioAtaque(){return poblacion*2}
}

class PlagaDeGarrapatas inherits PlagaDePulgas{
	
}

class PlagaDeMosquitos inherits Plaga{
	override method transmiteEnfermedad(){return super() and poblacion % 3 == 0}
	override method danioAtaque(){return poblacion}
}
