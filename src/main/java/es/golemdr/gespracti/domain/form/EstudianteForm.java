package es.golemdr.gespracti.domain.form;

import java.io.Serializable;
import java.sql.Date;

import javax.validation.constraints.NotEmpty;

public class EstudianteForm implements Serializable {

	private static final long serialVersionUID = 4335459013980750820L;

	private Long idEstudiante;

	@NotEmpty
	private String nombre;
	@NotEmpty
	private String apellido1;
	private String apellido2;
	private Long sexo;
	@NotEmpty
	private String fechaNacimientoS;
	@NotEmpty
	private String dniNie;
	private Long tipoDocumento;
	@NotEmpty
	private String email;
	@NotEmpty
	private String telefono;
	@NotEmpty
	private String direccion;
	@NotEmpty
	private String muncipio;
	@NotEmpty
	private String provincia;
	@NotEmpty
	private String codPostal;
	private Long pais;
	@NotEmpty
	private String nacionalidad;
	private Long gradoMinusvalia;
	private Long titulacionUpm;
	@NotEmpty
	private String fechaInicioS;
	@NotEmpty
	private String fechaFinS;

	@NotEmpty
	private String login;
	@NotEmpty
	private String password;
	@NotEmpty
	private String repassword;

	public Long getIdEstudiante() {
		return idEstudiante;
	}

	public void setIdEstudiante(Long idEstudiante) {
		this.idEstudiante = idEstudiante;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public Long getSexo() {
		return sexo;
	}

	public void setSexo(Long sexo) {
		this.sexo = sexo;
	}

	public String getDniNie() {
		return dniNie;
	}

	public void setDniNie(String dniNie) {
		this.dniNie = dniNie;
	}

	public Long getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(Long tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getMuncipio() {
		return muncipio;
	}

	public void setMuncipio(String muncipio) {
		this.muncipio = muncipio;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getCodPostal() {
		return codPostal;
	}

	public void setCodPostal(String codPostal) {
		this.codPostal = codPostal;
	}

	public Long getPais() {
		return pais;
	}

	public void setPais(Long pais) {
		this.pais = pais;
	}

	public String getNacionalidad() {
		return nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}

	public Long getGradoMinusvalia() {
		return gradoMinusvalia;
	}

	public void setGradoMinusvalia(Long gradoMinusvalia) {
		this.gradoMinusvalia = gradoMinusvalia;
	}

	public Long getTitulacionUpm() {
		return titulacionUpm;
	}

	public void setTitulacionUpm(Long titulacionUpm) {
		this.titulacionUpm = titulacionUpm;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getFechaNacimientoS() {
		return fechaNacimientoS;
	}

	public void setFechaNacimientoS(String fechaNacimientoS) {
		this.fechaNacimientoS = fechaNacimientoS;
	}

	public String getFechaInicioS() {
		return fechaInicioS;
	}

	public void setFechaInicioS(String fechaInicioS) {
		this.fechaInicioS = fechaInicioS;
	}

	public String getFechaFinS() {
		return fechaFinS;
	}

	public void setFechaFinS(String fechaFinS) {
		this.fechaFinS = fechaFinS;
	}

}
