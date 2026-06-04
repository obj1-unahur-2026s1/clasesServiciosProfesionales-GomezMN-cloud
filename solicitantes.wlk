import ProfesionalesYUniversidad.*
class Persona {
    const property ubicacionEnProvincias

    method puedeSerAtendidoPor(profesionales) = profesionales.map({p => p.provinciasDondePuedeTrabajar().any({p => p == ubicacionEnProvincias})})
}
class Institucion {
    const property universidadesReconocidas 

    method puedeSerAtendidoPor(profesionales) =  profesionales.map({p => p.universidadDondeEstudiaron().any({u => u == universidadesReconocidas})})
}
class Club {
    const property ubicacionEnProvincias 

    method puedeSerAtendidoPor(profesionales) = profesionales.map({p => p.provinciasDondePuedeTrabajar().any({p => p == ubicacionEnProvincias})})
}
