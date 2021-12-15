package es.golemdr.gespracti.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Empresa;
import es.golemdr.gespracti.repository.custom.EmpresasRepositoryCustom;

@Repository
public interface EmpresasRepository extends JpaRepository<Empresa, Long>, EmpresasRepositoryCustom{

}
