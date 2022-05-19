class Bicicleta{
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura()= rodado * 2.5 + 15
	method velocidad()= if (largo > 120){rodado + 6}else{rodado + 2}
	method carga()= accesorios.sum({a => a.carga()})
	method peso()= accesorios.sum({a => a.peso() }) + rodado / 2
	method tieneLuz()= accesorios.any({a => a.esLuminoso()})
	method accesriosLivianos()= accesorios.count({a => a.peso()< 1})
}

object farolito{
	method peso()= 0.5 
	method carga()= 0
	method esLuminoso()= true
}

object canasto{
	var property volumen
	method peso()= volumen / 10
	method carga()= volumen * 2
	method esLuminoso()= false
}

object morral{
	var property largo
	var property ojoDeGato
	method peso()= 1.2
	method carga()= largo/3
	method esLuminoso()= if(ojoDeGato){true}else{false}
}