package es.golemdr.gespracti.repository.custom;


import java.util.List;

import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Constante;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;


@Repository
public interface ConstantesRepositoryCustom{

	List<Constante> findConstantes(Constante constante, PaginacionBean paginacion);

}
