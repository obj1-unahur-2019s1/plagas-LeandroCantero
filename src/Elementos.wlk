class Hogar{
	var property mugre
	var property confort
	
	method esBueno(){return mugre <= confort/2}
}

class Huerta {
	var property capacidadProduccion
	var property nivel
	
	method esBueno(){return capacidadProduccion > nivel}
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno(){return nivelDeSalud > 250}
}
