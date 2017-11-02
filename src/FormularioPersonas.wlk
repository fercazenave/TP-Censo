class FormularioPersonaReducido {
	var edad 
	var nivelEstudio
	
	constructor(_edad ,_nivelEstudio){
		edad = _edad
		nivelEstudio = _nivelEstudio
	}
	method edad() = edad 
	method esProfesional(){
		if(edad>18){
			return self.nivelEstudio()=='universitario'
		}else{
			return true
		}
		
	}
	method nivelEstudio() = nivelEstudio
	method tiempoTarda(){
		return 2
	}
}

class FormularioPersonaExtendido inherits FormularioPersonaReducido {
	var trabajoActual
	var ascendenciaOriginaria
	var ascendenciaAfro
	constructor(_edad ,_nivelEstudio,_trabajo,_orig, _afro) = super(_edad,_nivelEstudio){
		trabajoActual = _trabajo
		ascendenciaOriginaria = _orig
		ascendenciaAfro = _afro
	}
	method ascendenciaOrig() = ascendenciaOriginaria
	method ascendenciaAfro() = ascendenciaAfro
	method descendienteDe(){
		return  ascendenciaOriginaria || ascendenciaAfro
		
	}
	override
	method esProfesional(){
		return super() && trabajoActual
	}
	override
	method tiempoTarda(){
		return 4
	}
	
}
