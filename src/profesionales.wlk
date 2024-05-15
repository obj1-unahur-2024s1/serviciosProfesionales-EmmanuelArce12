import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var honorariosPorHora 
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() = honorariosPorHora
	method honorariosPorHora(nuevaHora) {return nuevaHora == honorariosPorHora}
	method provinciasDondePuedeTrabajar() {
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() = universidad.honorariosRecomendados()
	method provinciasDondePuedeTrabajar() {return #{universidad.provincia()}}

}