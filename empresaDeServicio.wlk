import ProfesionalesYUniversidad.*
import provincias.*

class EmpresaDeServicios {
    const property profesionalesContratados
    const property honorarioDeReferencia

    method cuantosProfesionalesEstudiaronEn(universidad){
        return profesionalesContratados.count({p => p.universidadDondeEstudiaron() == universidad})
    }
    method profesionalesCaros(){
        return profesionalesContratados.filter({p => p.honorariosPorHora() > honorarioDeReferencia}).asSet()
    }
    method universidadesFormadoras(){
        return profesionalesContratados.map({p => p.universidadDondeEstudiaron()}).asSet()
    }
    method profesionalMasBarato() = profesionalesContratados.min({p => p.honorariosPorHora()})
    method sonProfesionalesAcotados(){
        return profesionalesContratados.all({ p => p.provinciasDondePuedeTrabajar().size() < 3 })
    }
}

