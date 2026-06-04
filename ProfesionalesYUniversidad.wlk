import provincias.*
class ProfesionalUniversitario {
  const property universidadDondeEstudiaron
  var dineroCobrado 

  method provinciasDondePuedeTrabajar() = #{universidadDondeEstudiaron.ubicacionProvincia() }
  method honorariosPorHora() = universidadDondeEstudiaron.honorariosPorHora()
  method consecuenciaDeCobro(donacionRecibida){
    universidadDondeEstudiaron.dineroRecibido(dineroCobrado / 2)
    dineroCobrado = 0
  } 
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
}

class Universidad {
  const property ubicacionProvincia
  const property honorariosPorHora 
  var dineroRecibido = 0

  method dineroRecibido(donacion){
    dineroRecibido += donacion
  }
}

object asociacionDeProfesionalesDelLitoral {
    var recaudacionTotal = 0

    method recaudacion(recaudacion) {
      recaudacionTotal += recaudacion
    } 
}




