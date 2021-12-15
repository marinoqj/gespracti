package es.golemdr.gespracti.repository.custom;


import java.util.List;

import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Empresa;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;


@Repository
public interface EmpresasRepositoryCustom{

	List<Empresa> findEmpresas(Empresa empresa, PaginacionBean paginacion);

}
