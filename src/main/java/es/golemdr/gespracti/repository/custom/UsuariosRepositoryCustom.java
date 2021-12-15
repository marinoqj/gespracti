package es.golemdr.gespracti.repository.custom;

import org.springframework.stereotype.Repository;

import es.golemdr.gespracti.domain.Usuario;




@Repository
public interface UsuariosRepositoryCustom {
	
	public Usuario recuperarUsuarioLogin(String login);

}
