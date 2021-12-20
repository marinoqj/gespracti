package es.golemdr.gespracti.domain.form;

import java.io.Serializable;
import java.sql.Date;

public class EmpresaForm implements Serializable {

	private static final long serialVersionUID = 1047926199184787214L;

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

	private String login;
	private String password;
	private String repassword;

	public Long getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(Long idEmpresa) {
		this.idEmpresa = idEmpresa;
	}

	public Long getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(Long tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getNifNie() {
		return nifNie;
	}

	public void setNifNie(String nifNie) {
		this.nifNie = nifNie;
	}

	public String getDenominacionSocial() {
		return denominacionSocial;
	}

	public void setDenominacionSocial(String denominacionSocial) {
		this.denominacionSocial = denominacionSocial;
	}

	public String getDenominacionComercial() {
		return denominacionComercial;
	}

	public void setDenominacionComercial(String denominacionComercial) {
		this.denominacionComercial = denominacionComercial;
	}

	public Long getTipoPersonaJuridica() {
		return tipoPersonaJuridica;
	}

	public void setTipoPersonaJuridica(Long tipoPersonaJuridica) {
		this.tipoPersonaJuridica = tipoPersonaJuridica;
	}

	public String getDomicilioFiscal() {
		return domicilioFiscal;
	}

	public void setDomicilioFiscal(String domicilioFiscal) {
		this.domicilioFiscal = domicilioFiscal;
	}

	public String getPersonaContacto() {
		return personaContacto;
	}

	public void setPersonaContacto(String personaContacto) {
		this.personaContacto = personaContacto;
	}

	public String getCargoPersonaContacto() {
		return cargoPersonaContacto;
	}

	public void setCargoPersonaContacto(String cargoPersonaContacto) {
		this.cargoPersonaContacto = cargoPersonaContacto;
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

	public Long getNumEmpleados() {
		return numEmpleados;
	}

	public void setNumEmpleados(Long numEmpleados) {
		this.numEmpleados = numEmpleados;
	}

	public Long getSectorActividad() {
		return sectorActividad;
	}

	public void setSectorActividad(Long sectorActividad) {
		this.sectorActividad = sectorActividad;
	}

	public String getUrlWeb() {
		return urlWeb;
	}

	public void setUrlWeb(String urlWeb) {
		this.urlWeb = urlWeb;
	}

	public String getDescripcionActividad() {
		return descripcionActividad;
	}

	public void setDescripcionActividad(String descripcionActividad) {
		this.descripcionActividad = descripcionActividad;
	}

	public String getUbicacionCentroTrabajo() {
		return ubicacionCentroTrabajo;
	}

	public void setUbicacionCentroTrabajo(String ubicacionCentroTrabajo) {
		this.ubicacionCentroTrabajo = ubicacionCentroTrabajo;
	}

	public String getRepresentanteLegal() {
		return representanteLegal;
	}

	public void setRepresentanteLegal(String representanteLegal) {
		this.representanteLegal = representanteLegal;
	}

	public String getCargoRepresentante() {
		return cargoRepresentante;
	}

	public void setCargoRepresentante(String cargoRepresentante) {
		this.cargoRepresentante = cargoRepresentante;
	}

	public Date getFechaEscritura() {
		return fechaEscritura;
	}

	public void setFechaEscritura(Date fechaEscritura) {
		this.fechaEscritura = fechaEscritura;
	}

	public String getNotario() {
		return notario;
	}

	public void setNotario(String notario) {
		this.notario = notario;
	}

	public String getLocalidadNotario() {
		return localidadNotario;
	}

	public void setLocalidadNotario(String localidadNotario) {
		this.localidadNotario = localidadNotario;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getMunicipio() {
		return municipio;
	}

	public void setMunicipio(String municipio) {
		this.municipio = municipio;
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

	public String getPersonaContactoContabilidad() {
		return personaContactoContabilidad;
	}

	public void setPersonaContactoContabilidad(String personaContactoContabilidad) {
		this.personaContactoContabilidad = personaContactoContabilidad;
	}

	public String getEmailContabilidad() {
		return emailContabilidad;
	}

	public void setEmailContabilidad(String emailContabilidad) {
		this.emailContabilidad = emailContabilidad;
	}

	public String getTelefonoContabilidad() {
		return telefonoContabilidad;
	}

	public void setTelefonoContabilidad(String telefonoContabilidad) {
		this.telefonoContabilidad = telefonoContabilidad;
	}

	public Long getMesesFactura() {
		return mesesFactura;
	}

	public void setMesesFactura(Long mesesFactura) {
		this.mesesFactura = mesesFactura;
	}

	public Long getAlumnosFactura() {
		return alumnosFactura;
	}

	public void setAlumnosFactura(Long alumnosFactura) {
		this.alumnosFactura = alumnosFactura;
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

}
