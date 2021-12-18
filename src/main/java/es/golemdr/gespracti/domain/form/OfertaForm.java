package es.golemdr.gespracti.domain.form;


import java.io.Serializable;
import java.sql.Date;


public class OfertaForm implements Serializable{

	private Long idOferta;
	private String nombre;
	private String descripcion;
	private Long duracion;
	private Date fechaInicio;
	private Date fechaFin;
	private Date inicioPlazo;
	private Date finPlazo;



public Long getIdOferta() {
		return idOferta;
	}
	public void setIdOferta(Long idOferta) {
		this.idOferta = idOferta;
	}
public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
public Long getDuracion() {
		return duracion;
	}
	public void setDuracion(Long duracion) {
		this.duracion = duracion;
	}
public Date getFechaInicio() {
		return fechaInicio;
	}
	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}
public Date getFechaFin() {
		return fechaFin;
	}
	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}
public Date getInicioPlazo() {
		return inicioPlazo;
	}
	public void setInicioPlazo(Date inicioPlazo) {
		this.inicioPlazo = inicioPlazo;
	}
public Date getFinPlazo() {
		return finPlazo;
	}
	public void setFinPlazo(Date finPlazo) {
		this.finPlazo = finPlazo;
	}

}
