import Elementos.*

class Plaga {
		var property poblacion
		
		method transmiteEnfermedades(){return poblacion >= 10}
		method danioAtaque(){return 0}
		
		method atacarA(elemento){
			poblacion *= 1.10
			elemento.recibeAtaque(self)
		}
}

class PlagaDeCucarachas inherits Plaga{
	var property pesoPromedio
	
	override method transmiteEnfermedades(){return super() and self.pesoPromedio() >= 10}
	override method danioAtaque(){return poblacion/2}
	override method atacarA(elemento){
		pesoPromedio += 2
		super(elemento)
	}
}

class PlagaDePulgas inherits Plaga{
	override method danioAtaque(){return poblacion*2}
}

class PlagaDeGarrapatas inherits PlagaDePulgas{
	override method atacarA(elemento){
		poblacion *= 1.20
		elemento.recibeAtaque(self)
	}
}

class PlagaDeMosquitos inherits Plaga{
	override method transmiteEnfermedades(){return super() and poblacion % 3 == 0}
	override method danioAtaque(){return poblacion}
}
