package es.golemdr.gespracti.domain;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="estudiantes")
public class Estudiante{

	private Long idEstudiante;
	private String nombre;
	private String apellido1;
	private String apellido2;
	private Long sexo;
	private Date fechaNacimiento;
	private String dniNie;
	private Long tipoDocumento;
	private String email;
	private String telefono;
	private String direccion;
	private String muncipio;
	private String provincia;
	private String codPostal;
	private Long pais;
	private String nacionalidad;
	private Long gradoMinusvalia;
	private Long titulacionUpm;
	private Date fechaInicio;
	private Date fechaFin;



@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="ID_ESTUDIANTE")
public Long getIdEstudiante() {
		return idEstudiante;
	}
	public void setIdEstudiante(Long idEstudiante) {
		this.idEstudiante = idEstudiante;
	}
@Column(name="NOMBRE")
public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
@Column(name="APELLIDO1")
public String getApellido1() {
		return apellido1;
	}
	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}
@Column(name="APELLIDO2")
public String getApellido2() {
		return apellido2;
	}
	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}
@Column(name="SEXO")
public Long getSexo() {
		return sexo;
	}
	public void setSexo(Long sexo) {
		this.sexo = sexo;
	}
@Column(name="FECHA_NACIMIENTO")
public Date getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
@Column(name="DNI_NIE")
public String getDniNie() {
		return dniNie;
	}
	public void setDniNie(String dniNie) {
		this.dniNie = dniNie;
	}
@Column(name="TIPO_DOCUMENTO")
public Long getTipoDocumento() {
		return tipoDocumento;
	}
	public void setTipoDocumento(Long tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}
@Column(name="EMAIL")
public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
@Column(name="TELEFONO")
public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
@Column(name="DIRECCION")
public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
@Column(name="MUNCIPIO")
public String getMuncipio() {
		return muncipio;
	}
	public void setMuncipio(String muncipio) {
		this.muncipio = muncipio;
	}
@Column(name="PROVINCIA")
public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
@Column(name="COD_POSTAL")
public String getCodPostal() {
		return codPostal;
	}
	public void setCodPostal(String codPostal) {
		this.codPostal = codPostal;
	}
@Column(name="PAIS")
public Long getPais() {
		return pais;
	}
	public void setPais(Long pais) {
		this.pais = pais;
	}
@Column(name="NACIONALIDAD")
public String getNacionalidad() {
		return nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}
@Column(name="GRADO_MINUSVALIA")
public Long getGradoMinusvalia() {
		return gradoMinusvalia;
	}
	public void setGradoMinusvalia(Long gradoMinusvalia) {
		this.gradoMinusvalia = gradoMinusvalia;
	}
@Column(name="TITULACION_UPM")
public Long getTitulacionUpm() {
		return titulacionUpm;
	}
	public void setTitulacionUpm(Long titulacionUpm) {
		this.titulacionUpm = titulacionUpm;
	}
@Column(name="FECHA_INICIO")
public Date getFechaInicio() {
		return fechaInicio;
	}
	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}
@Column(name="FECHA_FIN")
public Date getFechaFin() {
		return fechaFin;
	}
	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

}
