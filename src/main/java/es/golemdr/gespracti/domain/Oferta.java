package es.golemdr.gespracti.domain;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ofertas")
public class Oferta{

	private Long idOferta;
	private String nombre;
	private String descripcion;
	private Long duracion;
	private Date fechaInicio;
	private Date fechaFin;
	private Date inicioPlazo;
	private Date finPlazo;



@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="ID_OFERTA")
public Long getIdOferta() {
		return idOferta;
	}
	public void setIdOferta(Long idOferta) {
		this.idOferta = idOferta;
	}
@Column(name="NOMBRE")
public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
@Column(name="DESCRIPCION")
public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
@Column(name="DURACION")
public Long getDuracion() {
		return duracion;
	}
	public void setDuracion(Long duracion) {
		this.duracion = duracion;
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
@Column(name="INICIO_PLAZO")
public Date getInicioPlazo() {
		return inicioPlazo;
	}
	public void setInicioPlazo(Date inicioPlazo) {
		this.inicioPlazo = inicioPlazo;
	}
@Column(name="FIN_PLAZO")
public Date getFinPlazo() {
		return finPlazo;
	}
	public void setFinPlazo(Date finPlazo) {
		this.finPlazo = finPlazo;
	}

}
