import provincias.*
class ProfesionalUniversitario {
  const property universidadDondeEstudiaron

  method provinciasDondePuedeTrabajar() = #{universidadDondeEstudiaron.ubicacionProvincia() }
  method honorariosPorHora() = universidadDondeEstudiaron.honorariosPorHora()
}
class ProfesionalLitoral {
  const property universidadDondeEstudiaron

  method provinciasDondePuedeTrabajar() = #{entreRios, santaFe, corrientes}
  method honorariosPorHora() = 3000
}
class ProfesionalLibre {
  const property universidadDondeEstudiaron
  const property provinciasDondePuedeTrabajar
  const property honorariosPorHora 
}

class Universidad {
  const property ubicacionProvincia
  const property honorariosPorHora 

}




