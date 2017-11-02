class Ciudad {
	var ciudad 
	var domicilios =[]
	constructor(_ciudad){
		ciudad=_ciudad
	}
	
	method addDomicilios(vivienda){
			domicilios.add(vivienda)
	}
	
	method getDomiciliosHacinados(){
		return domicilios.filter{n => n.esHacinada()}
	}
	
	method poblacionTotal(){
		return domicilios.sum{n => n.getIntegrantes().length()}
	}
	
	method masLento(){
		return domicilios.max{n => n.cuantoTarda()}
	}
	method tiempoQueTarda(vivienda){
		return vivienda.tipoCensista()
	}
	
}
