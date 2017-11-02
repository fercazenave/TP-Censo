import FormularioPersonas.*
import Ciudad.*
import Censista.* 

class Vivienda{
	var integrantes = []
	var ciudad
	var tipoCensista
	
	constructor(_ciudad, _tipoCensista){
		ciudad = _ciudad
		tipoCensista = _tipoCensista
		ciudad.addDomicilios(self)
	}
	
	method agregarIntegrantes(persona){
		integrantes.add(persona)
		
	}
	method getIntegrantes(){
		return integrantes
	}
	
	method cuantoTarda(){
		return tipoCensista.tiempo(self)
	}
	
	
	method ciudad() = ciudad
}

class ViviendaSimple inherits Vivienda {
	var ambientes = []
	var artefactos = []
	
	constructor (_ciudad, _tipoCensista,_ambientes,_artefactos) = super(_ciudad, _tipoCensista){
		ambientes = _ambientes
		artefactos = _artefactos
	}
	method esHacinada(){
		 return (ambientes.size())*2 < integrantes.size()
		
	}
	method ambientes() = ambientes
	method esClaseMedia(){
		return  artefactos.contains('computadora') && integrantes.all{ n =>n.esProfesional()}
	}
	method tipoCensista(tipoCensista){
		return tipoCensista.tiempo()
	}
	
}

class ViviendaColectiva inherits Vivienda{
	var superficie
	constructor(_ciudad, _tipoCensista, _superficie)=super(_ciudad, _tipoCensista){
		superficie = _superficie
	}
	method esHacienda(){
		return (integrantes.size())*10 > superficie
	}
	method esClaseMedia(){
		return 100 < superficie
	}
	method tipoCensista(tipoCensista){
		return 5
	}
}

