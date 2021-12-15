package es.golemdr.gespracti.repository.custom;


import java.util.List;

import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Estudiante;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;


@Repository
public interface EstudiantesRepositoryCustom{

	List<Estudiante> findEstudiantes(Estudiante estudiante, PaginacionBean paginacion);

}
