package es.golemdr.gespracti.domain;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empresas")
public class Empresa{

	private Long idEmpresa;
	private Long tipoDocumento;
	private String nifNie;
	private String denominacionSocial;
	private String denominacionComercial;
	private Long tipoPersonaJuridica;
	private String domicilioFiscal;
	private String personaContacto;
	private String cargoPersonaContacto;
	private String email;
	private String telefono;
	private Long numEmpleados;
	private Long sectorActividad;
	private String urlWeb;
	private String descripcionActividad;
	private String ubicacionCentroTrabajo;
	private String representanteLegal;
	private String cargoRepresentante;
	private Date fechaEscritura;
	private String notario;
	private String localidadNotario;
	private String direccion;
	private String municipio;
	private String provincia;
	private String codPostal;
	private Long pais;
	private String personaContactoContabilidad;
	private String emailContabilidad;
	private String telefonoContabilidad;
	private Long mesesFactura;
	private Long alumnosFactura;



@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="ID_EMPRESA")
public Long getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(Long idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
@Column(name="TIPO_DOCUMENTO")
public Long getTipoDocumento() {
		return tipoDocumento;
	}
	public void setTipoDocumento(Long tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}
@Column(name="NIF_NIE")
public String getNifNie() {
		return nifNie;
	}
	public void setNifNie(String nifNie) {
		this.nifNie = nifNie;
	}
@Column(name="DENOMINACION_SOCIAL")
public String getDenominacionSocial() {
		return denominacionSocial;
	}
	public void setDenominacionSocial(String denominacionSocial) {
		this.denominacionSocial = denominacionSocial;
	}
@Column(name="DENOMINACION_COMERCIAL")
public String getDenominacionComercial() {
		return denominacionComercial;
	}
	public void setDenominacionComercial(String denominacionComercial) {
		this.denominacionComercial = denominacionComercial;
	}
@Column(name="TIPO_PERSONA_JURIDICA")
public Long getTipoPersonaJuridica() {
		return tipoPersonaJuridica;
	}
	public void setTipoPersonaJuridica(Long tipoPersonaJuridica) {
		this.tipoPersonaJuridica = tipoPersonaJuridica;
	}
@Column(name="DOMICILIO_FISCAL")
public String getDomicilioFiscal() {
		return domicilioFiscal;
	}
	public void setDomicilioFiscal(String domicilioFiscal) {
		this.domicilioFiscal = domicilioFiscal;
	}
@Column(name="PERSONA_CONTACTO")
public String getPersonaContacto() {
		return personaContacto;
	}
	public void setPersonaContacto(String personaContacto) {
		this.personaContacto = personaContacto;
	}
@Column(name="CARGO_PERSONA_CONTACTO")
public String getCargoPersonaContacto() {
		return cargoPersonaContacto;
	}
	public void setCargoPersonaContacto(String cargoPersonaContacto) {
		this.cargoPersonaContacto = cargoPersonaContacto;
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
@Column(name="NUM_EMPLEADOS")
public Long getNumEmpleados() {
		return numEmpleados;
	}
	public void setNumEmpleados(Long numEmpleados) {
		this.numEmpleados = numEmpleados;
	}
@Column(name="SECTOR_ACTIVIDAD")
public Long getSectorActividad() {
		return sectorActividad;
	}
	public void setSectorActividad(Long sectorActividad) {
		this.sectorActividad = sectorActividad;
	}
@Column(name="URL_WEB")
public String getUrlWeb() {
		return urlWeb;
	}
	public void setUrlWeb(String urlWeb) {
		this.urlWeb = urlWeb;
	}
@Column(name="DESCRIPCION_ACTIVIDAD")
public String getDescripcionActividad() {
		return descripcionActividad;
	}
	public void setDescripcionActividad(String descripcionActividad) {
		this.descripcionActividad = descripcionActividad;
	}
@Column(name="UBICACION_CENTRO_TRABAJO")
public String getUbicacionCentroTrabajo() {
		return ubicacionCentroTrabajo;
	}
	public void setUbicacionCentroTrabajo(String ubicacionCentroTrabajo) {
		this.ubicacionCentroTrabajo = ubicacionCentroTrabajo;
	}
@Column(name="REPRESENTANTE_LEGAL")
public String getRepresentanteLegal() {
		return representanteLegal;
	}
	public void setRepresentanteLegal(String representanteLegal) {
		this.representanteLegal = representanteLegal;
	}
@Column(name="CARGO_REPRESENTANTE")
public String getCargoRepresentante() {
		return cargoRepresentante;
	}
	public void setCargoRepresentante(String cargoRepresentante) {
		this.cargoRepresentante = cargoRepresentante;
	}
@Column(name="FECHA_ESCRITURA")
public Date getFechaEscritura() {
		return fechaEscritura;
	}
	public void setFechaEscritura(Date fechaEscritura) {
		this.fechaEscritura = fechaEscritura;
	}
@Column(name="NOTARIO")
public String getNotario() {
		return notario;
	}
	public void setNotario(String notario) {
		this.notario = notario;
	}
@Column(name="LOCALIDAD_NOTARIO")
public String getLocalidadNotario() {
		return localidadNotario;
	}
	public void setLocalidadNotario(String localidadNotario) {
		this.localidadNotario = localidadNotario;
	}
@Column(name="DIRECCION")
public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
@Column(name="MUNICIPIO")
public String getMunicipio() {
		return municipio;
	}
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
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
@Column(name="PERSONA_CONTACTO_CONTABILIDAD")
public String getPersonaContactoContabilidad() {
		return personaContactoContabilidad;
	}
	public void setPersonaContactoContabilidad(String personaContactoContabilidad) {
		this.personaContactoContabilidad = personaContactoContabilidad;
	}
@Column(name="EMAIL_CONTABILIDAD")
public String getEmailContabilidad() {
		return emailContabilidad;
	}
	public void setEmailContabilidad(String emailContabilidad) {
		this.emailContabilidad = emailContabilidad;
	}
@Column(name="TELEFONO_CONTABILIDAD")
public String getTelefonoContabilidad() {
		return telefonoContabilidad;
	}
	public void setTelefonoContabilidad(String telefonoContabilidad) {
		this.telefonoContabilidad = telefonoContabilidad;
	}
@Column(name="MESES_FACTURA")
public Long getMesesFactura() {
		return mesesFactura;
	}
	public void setMesesFactura(Long mesesFactura) {
		this.mesesFactura = mesesFactura;
	}
@Column(name="ALUMNOS_FACTURA")
public Long getAlumnosFactura() {
		return alumnosFactura;
	}
	public void setAlumnosFactura(Long alumnosFactura) {
		this.alumnosFactura = alumnosFactura;
	}

}
