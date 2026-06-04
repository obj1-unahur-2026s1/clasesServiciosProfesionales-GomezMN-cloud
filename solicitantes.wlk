import ProfesionalesYUniversidad.*
class Persona {
    const property ubicacionEnProvincias

    method puedeSerAtendidoPor(profesionales) = profesionales.filter({p => p.provinciasDondePuedeTrabajar() == ubicacionEnProvincias})
}
class Institucion {
    const property universidadesReconocidas 

    method puedeSerAtendidoPor(profesionales) =  profesionales.filter({p => p.universidadDondeEstudiaron() == universidadesReconocidas})
}
class Club {
    const property ubicacionEnProvincias 

    method puedeSerAtendidoPor(profesionales) = profesionales.filter({p => p.provinciasDondePuedeTrabajar() == ubicacionEnProvincias})
}
