object voluntario {
	method tarda(vivienda){
		return 10 + vivienda.getIntegrantes().sum{ n=> n.tiempoTarda()}
		
	}
}
class Antropologo {
	var etnia
	constructor (_etnia){
		etnia = _etnia
	}
	
	method tarda(vivienda){
			 if(vivienda.getIntegrantes().any{ n => n.ascendenciaOrig()==etnia}){
			 	return 30 
			 }else{
			    return voluntario.tarda(vivienda)
			 }
	}
}
