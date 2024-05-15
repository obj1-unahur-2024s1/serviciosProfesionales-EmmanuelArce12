import profesionales.*

class Empresa{
	const profesionales = #{}
	var property honorariosDeReferencia
	
	method agregarProfesional(unProfesional){
		profesionales.add(unProfesional)}
	method eliminarProfesional(unProfesional){
		profesionales.remove(unProfesional)}
	method cuantosEstudiaronEn(unaUniversidad){return 
		profesionales.count({p=>p.universidad() ==unaUniversidad})}
	method profesionalesCaros(){return
		profesionales.filter({p=>p.honorariosPorHora()>honorariosDeReferencia})}
	method universidadesFormadoras(){return
		profesionales.map({p=>p.universidad()}).asSet()}
	method profesionalBarato(){return
		profesionales.min({p=>p.honorariosPorHora()})}
	method esDeGenteAcotada(){return 
		profesionales.all({p=>p.provinciasDondePuedeTrabajar().size()<= 3})}
}
	
