import Elementos.*

class Barrio {
	var property elementos = []
	
	method aniadirElemento(elemento){elemento.add()}
	method eliminarElemento(elemento){elemento.remove()}
	method barrioEsCopado(){return elementos.count{e => e.esBueno()} > elementos.count{e => !e.esBueno()}}
	
}
