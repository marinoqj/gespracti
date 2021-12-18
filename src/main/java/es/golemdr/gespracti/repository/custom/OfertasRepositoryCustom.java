package es.golemdr.gespracti.repository.custom;


import java.util.List;

import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Oferta;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;


@Repository
public interface OfertasRepositoryCustom{

	List<Oferta> findOfertas(Oferta oferta, PaginacionBean paginacion);

}
