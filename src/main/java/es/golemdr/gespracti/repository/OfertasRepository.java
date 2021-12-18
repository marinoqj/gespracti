package es.golemdr.gespracti.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Oferta;
import es.golemdr.gespracti.repository.custom.OfertasRepositoryCustom;

@Repository
public interface OfertasRepository extends JpaRepository<Oferta, Long>, OfertasRepositoryCustom{

}
