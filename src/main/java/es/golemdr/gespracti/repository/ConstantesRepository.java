package es.golemdr.gespracti.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Constante;
import es.golemdr.gespracti.repository.custom.ConstantesRepositoryCustom;

@Repository
public interface ConstantesRepository extends JpaRepository<Constante, Long>, ConstantesRepositoryCustom{

}
