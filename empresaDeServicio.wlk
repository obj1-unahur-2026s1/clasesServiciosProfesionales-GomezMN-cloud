import ProfesionalesYUniversidad.*
import provincias.*

class EmpresaDeServicios {
    const property profesionalesContratados
    const property honorarioDeReferencia
    const clientes =  #{}
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
    method puedeSatisfacer(unSolicitante){
        return unSolicitante.puedeSerAtendidoPor(profesionalesContratados).size() >= 1
    }
    method darServicio(unSolicitante) {
        if (self.puedeSatisfacer(unSolicitante)){
            unSolicitante.puedeSerAtendidoPor(profesionalesContratados).anyOne().cobrarHonorario()
            clientes.add(unSolicitante)
        }
    } 
    method cantidadDeClientes() = clientes.size()
    method tieneAlCliente(unCliente) = clientes.contains(unCliente)
    method esProfesionalPocoAtractivo(unProfesional){
        return profesionalesContratados.any({p => p.provinciasDondePuedeTrabajar() == unProfesional.provinciasDondePuedeTrabajar() && p.honorariosPorHora() < unProfesional.honorariosPorHora()})
    }
}


