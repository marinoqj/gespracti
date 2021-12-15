package es.golemdr.gespracti.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import es.golemdr.gespracti.domain.Usuario;
import es.golemdr.gespracti.repository.custom.UsuariosRepositoryCustom;





public interface UsuariosRepository extends JpaRepository<Usuario, Long>, UsuariosRepositoryCustom{

}
