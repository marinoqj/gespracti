package es.golemdr.gespracti.controller.constantes;


public class ForwardConstants {
	
	private ForwardConstants() {
		throw new IllegalStateException("ForwardConstants class");
	}

	public static final String FWD_HOME = "Home";
	public static final String FWD_LOGIN = "Login";
	public static final String FWD_ACCESO_DENEGADO = "AccesoDenegado";
	public static final String FWD_MENSAJE = "Mensaje";
	
	// Empresas
	public static final String FWD_LISTADO_EMPRESAS = "ListadoEmpresas";	
	public static final String RED_LISTADO_EMPRESAS = "redirect:listadoEmpresas1.do";
	public static final String FWD_EMPRESA_FORM = "EmpresaForm";
	
	// Estudiantes
	public static final String FWD_LISTADO_ESTUDIANTES = "ListadoEstudiantes";	
	public static final String RED_LISTADO_ESTUDIANTES = "redirect:listadoEstudiantes1.do";
	public static final String FWD_ESTUDIANTE_FORM = "EstudianteForm";
	
	// Constantes
	public static final String FWD_LISTADO_CONSTANTES = "ListadoConstantes";	
	public static final String RED_LISTADO_CONSTANTES = "redirect:listadoConstantes1.do";
	public static final String FWD_CONSTANTE_FORM = "ConstanteForm";
	

	// Ofertas
	public static final String FWD_LISTADO_OFERTAS = "ListadoOfertas";	
	public static final String RED_LISTADO_OFERTAS = "redirect:listadoOfertas1.do";
	public static final String FWD_OFERTA_FORM = "OfertaForm";
	

}
