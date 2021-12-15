package es.golemdr.gespracti.controller.constantes;


public class UrlConstants {
	
	private UrlConstants() {
		throw new IllegalStateException("UrlConstants class");
	}


	public static final String URL_LOGIN = "/login.do";
	public static final String URL_DENIED = "/denied.do";
	public static final String URL_LOGIN_CONTROLLER = "/loginController.do";
	public static final String URL_LOGIN_FAILURE = "/login-failure.do";	
	public static final String URL_HOME = "/home.do";
	public static final String URL_ACCESO_OK = "/accesook.do";
	public static final String URL_ENTRADA_APLICACION = "/inicio.do";


	public static final String URL_VER_LOGIN = "/login.do";
	public static final String URL_CAMBIAR_PASSWORD="/cambiarPassword.do";

	public static final String SUFIJO_PAGINACION = 	"{inicio}.do";

	
	public static final String SEGURIDAD_EMPRESAS =  "/sec";	
	public static final String SEGURIDAD_ESTUDIANTES =  "/sec";		

	

	// Empresas
	public static final String URL_LISTADO_EMPRESAS = SEGURIDAD_EMPRESAS + "/listadoEmpresas" + SUFIJO_PAGINACION;
	public static final String URL_LISTADO_EMPRESAS_FILTRADO = SEGURIDAD_EMPRESAS + "/listadoEmpresasFiltrado" + SUFIJO_PAGINACION;
	public static final String URL_ALTA_EMPRESA = SEGURIDAD_EMPRESAS + "/altaEmpresa.do";
	public static final String URL_INSERTAR_EMPRESA = SEGURIDAD_EMPRESAS + "/insertarEmpresa.do";
	public static final String URL_EDITAR_EMPRESA = SEGURIDAD_EMPRESAS + "/editarEmpresa.do";
	public static final String URL_ACTUALIZAR_EMPRESA = SEGURIDAD_EMPRESAS + "/actualizarEmpresa.do";
	public static final String URL_BORRAR_EMPRESA = SEGURIDAD_EMPRESAS + "/borrarEmpresa.do";
    public static final String URL_BUSCAR_EMPRESAS = SEGURIDAD_EMPRESAS + "/buscarEmpresas.do";


	

	// Estudiantes
	public static final String URL_LISTADO_ESTUDIANTES = SEGURIDAD_ESTUDIANTES + "/listadoEstudiantes" + SUFIJO_PAGINACION;
	public static final String URL_LISTADO_ESTUDIANTES_FILTRADO = SEGURIDAD_ESTUDIANTES + "/listadoEstudiantesFiltrado" + SUFIJO_PAGINACION;
	public static final String URL_ALTA_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/altaEstudiante.do";
	public static final String URL_INSERTAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/insertarEstudiante.do";
	public static final String URL_EDITAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/editarEstudiante.do";
	public static final String URL_ACTUALIZAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/actualizarEstudiante.do";
	public static final String URL_BORRAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/borrarEstudiante.do";
    public static final String URL_BUSCAR_ESTUDIANTES = SEGURIDAD_ESTUDIANTES + "/buscarEstudiantes.do";


	

}