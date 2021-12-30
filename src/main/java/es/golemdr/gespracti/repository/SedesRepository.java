package es.golemdr.gespracti.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Sede;

@Repository
public interface SedesRepository extends JpaRepository<Sede, Long> {
	List<Sede> findAllByOrderByNombreAsc();
}
