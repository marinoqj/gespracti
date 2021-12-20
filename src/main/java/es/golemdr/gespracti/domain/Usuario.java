package es.golemdr.gespracti.domain;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="usuarios")
public class Usuario{

	private Long idUsuario;
	private String login;
	private String password;
	private String cambiarPassword;
	
	private List<Rol> roles= new ArrayList<>(0);

	private Estudiante estudiante;
	private Empresa empresa;
	
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="ID_USUARIO")
public Long getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}
@Column(name="LOGIN")
public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
@Column(name="PASSWORD")
public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
@Column(name="CAMBIAR_PASSWORD")
public String getCambiarPassword() {
		return cambiarPassword;
	}
	public void setCambiarPassword(String cambiarPassword) {
		this.cambiarPassword = cambiarPassword;
	}

	
@ManyToMany(fetch = FetchType.LAZY)
@JoinTable(name = "roles_usuarios", joinColumns = { @JoinColumn(name = "id_usuario") }, inverseJoinColumns = { @JoinColumn(name = "id_rol") })	
public List<Rol> getRoles() {
	return roles;
}
public void setRoles(List<Rol> roles) {
	this.roles = roles;
}

@OneToOne(mappedBy = "usuario")
public Estudiante getEstudiante() {
	return estudiante;
}
public void setEstudiante(Estudiante estudiante) {
	this.estudiante = estudiante;
}
@OneToOne(mappedBy = "usuario")
public Empresa getEmpresa() {
	return empresa;
}
public void setEmpresa(Empresa empresa) {
	this.empresa = empresa;
}




}
