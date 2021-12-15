package es.golemdr.gespracti.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Estudiante;
import es.golemdr.gespracti.repository.custom.EstudiantesRepositoryCustom;

@Repository
public interface EstudiantesRepository extends JpaRepository<Estudiante, Long>, EstudiantesRepositoryCustom{

}
