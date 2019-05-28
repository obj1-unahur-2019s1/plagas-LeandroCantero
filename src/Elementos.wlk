import Plagas.*

class Hogar{
	var property mugre
	var property confort
	
	method esBueno(){return mugre <= confort/2}
	
	method recibeAtaque(plaga){mugre += plaga.danioAtaque()}
}

class Huerta {
	var property capacidadProduccion
	var property nivel
	
	method esBueno(){return capacidadProduccion > nivel}
	method recibeAtaque(plaga){
		capacidadProduccion -= plaga.danioAtaque()*0.10
		if (plaga.transmiteEnfermedades()){
			capacidadProduccion -= 10
		}
	}
}

class Mascota {
	var property nivelDeSalud
	
	method esBueno(){return nivelDeSalud > 250}
	method recibeAtaque(plaga){
		if (plaga.transmiteEnfermedades()){
			nivelDeSalud -= plaga.danioAtaque()
		}
	}
}