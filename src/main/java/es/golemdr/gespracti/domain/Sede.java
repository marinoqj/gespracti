package es.golemdr.gespracti.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "sedes")
public class Sede {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_SEDE")
	private Long idSede;
	
	@Column(name = "NOMBRE")
	private String nombre;
	
	@OneToMany(mappedBy="sede", 
			   cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	private List<Titulacion> titulaciones;	
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Long getIdSede() {
		return idSede;
	}

	public void setIdSede(Long idSede) {
		this.idSede = idSede;
	}

	public List<Titulacion> getTitulaciones() {
		return titulaciones;
	}

	public void setTitulaciones(List<Titulacion> titulaciones) {
		this.titulaciones = titulaciones;
	}
	
	public void add(Titulacion titulacion) {
		
		if (titulaciones == null) {
			titulaciones = new ArrayList<Titulacion>();
		}
		
		titulaciones.add(titulacion);
		
		titulacion.setSede(this);
	}

}
