import provincias.*
class ProfesionalUniversitario {
  const property universidadDondeEstudiaron
  var dineroCobrado 

  method provinciasDondePuedeTrabajar() = #{universidadDondeEstudiaron.ubicacionProvincia() }
  method honorariosPorHora() = universidadDondeEstudiaron.honorariosPorHora()
  method consecuenciaDeCobro(donacionRecibida){
    universidadDondeEstudiaron.recibirDonacion(dineroCobrado / 2)
    dineroCobrado = 0
  } 
  method cobrarHonorario() {
    dineroCobrado += self.honorariosPorHora()
  }
  method dineroCobrado() = dineroCobrado
}
class ProfesionalLitoral {
  const property universidadDondeEstudiaron
  var dineroCobrado 

  method provinciasDondePuedeTrabajar() = #{entreRios, santaFe, corrientes}
  method honorariosPorHora() = 3000
  method consecuenciaDeCobro(donacionRecibida) {
    asociacionDeProfesionalesDelLitoral.recaudacion(dineroCobrado)
    dineroCobrado = 0
  }
  method cobrarHonorario() {
    dineroCobrado += self.honorariosPorHora()
  }
  method dineroCobrado() = dineroCobrado
}
class ProfesionalLibre {
  const property universidadDondeEstudiaron
  const property provinciasDondePuedeTrabajar
  const property honorariosPorHora 
  var dineroCobrado 

  method consecuenciaDeCobro(donacionRecibida) {
    dineroCobrado += donacionRecibida
  }
  method pasarDinero(profesionalLibre, cantidadDeDinero) {
    if (cantidadDeDinero <= dineroCobrado) {
      profesionalLibre.consecuenciaDeCobro(cantidadDeDinero)
      dineroCobrado -= cantidadDeDinero
    }
  }
  method cobrarHonorario() {
    dineroCobrado += self.honorariosPorHora()
  }
  method dineroCobrado() = dineroCobrado
}

class Universidad {
  const property ubicacionProvincia
  const property honorariosPorHora 
  var dineroRecibido = 0

  method recibirDonacion(donacion){
    dineroRecibido += donacion
  }
  method dineroRecibido() = dineroRecibido
}

object asociacionDeProfesionalesDelLitoral {
    var recaudacionTotal = 0

    method recaudacion(recaudacion) {
      recaudacionTotal += recaudacion
    } 
}




