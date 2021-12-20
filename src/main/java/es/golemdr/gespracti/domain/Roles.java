package es.golemdr.gespracti.domain;

public enum Roles {
	
	ADMIN(1L, "ADMIN"),
	ESTUDIANTE(2L, "ESTUDIANTE"),
	EMPRESA(3L,"EMPRESA");

	private final long idRol;
	private final String nombreRol;
	
	private Roles(long idRol, String nombreRol) {
		
		this.idRol = idRol;
		this.nombreRol = nombreRol;
		
	}

	public long getIdRol() {
		return idRol;
	}

	public String getNombreRol() {
		return nombreRol;
	}	
	
	public static Roles getById(Long idRol) {
		
		Roles resultado = null;
		
		for(Roles unRol : Roles.values()) {
			
			if(unRol.idRol == idRol.longValue()) {
				resultado = unRol;
				break;
			}
			
			
		}
		
		return resultado;
	}
	
}
