package es.golemdr.gespracti.controller.constantes;


public class UrlConstants {
	
	private UrlConstants() {
		throw new IllegalStateException("UrlConstants class");
	}


	public static final String URL_VER_LOGIN_PERSONALIZADO = "/verLogin{tipoPortal}.do";
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

	
	public static final String ACCESO_PUBLICO =  "/pub";	
	public static final String SEGURIDAD_EMPRESAS =  "/sec";	
	public static final String SEGURIDAD_ESTUDIANTES =  "/sec";	
	public static final String SEGURIDAD_CONSTANTES =  "/sec";	 
	public static final String SEGURIDAD_OFERTAS =  "/sec";		
	public static final String SEGURIDAD_COMUNICACIONES =  "/sec";		

	


	

	// Empresas
	public static final String URL_LISTADO_EMPRESAS = SEGURIDAD_EMPRESAS + "/listadoEmpresas" + SUFIJO_PAGINACION;
	public static final String URL_LISTADO_EMPRESAS_FILTRADO = SEGURIDAD_EMPRESAS + "/listadoEmpresasFiltrado" + SUFIJO_PAGINACION;
	public static final String URL_ALTA_EMPRESA = ACCESO_PUBLICO + "/altaEmpresa.do";
	public static final String URL_INSERTAR_EMPRESA = SEGURIDAD_EMPRESAS + "/insertarEmpresa.do";
	public static final String URL_EDITAR_EMPRESA = SEGURIDAD_EMPRESAS + "/editarEmpresa.do";
	public static final String URL_ACTUALIZAR_EMPRESA = SEGURIDAD_EMPRESAS + "/actualizarEmpresa.do";
	public static final String URL_BORRAR_EMPRESA = SEGURIDAD_EMPRESAS + "/borrarEmpresa.do";
    public static final String URL_BUSCAR_EMPRESAS = SEGURIDAD_EMPRESAS + "/buscarEmpresas.do";


	

	// Estudiantes
	public static final String URL_LISTADO_ESTUDIANTES = SEGURIDAD_ESTUDIANTES + "/listadoEstudiantes" + SUFIJO_PAGINACION;
	public static final String URL_LISTADO_ESTUDIANTES_FILTRADO = SEGURIDAD_ESTUDIANTES + "/listadoEstudiantesFiltrado" + SUFIJO_PAGINACION;
	public static final String URL_ALTA_ESTUDIANTE = ACCESO_PUBLICO + "/altaEstudiante.do";
	public static final String URL_INSERTAR_ESTUDIANTE = ACCESO_PUBLICO + "/insertarEstudiante.do";
	public static final String URL_EDITAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/editarEstudiante.do";
	public static final String URL_ACTUALIZAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/actualizarEstudiante.do";
	public static final String URL_BORRAR_ESTUDIANTE = SEGURIDAD_ESTUDIANTES + "/borrarEstudiante.do";
    public static final String URL_BUSCAR_ESTUDIANTES = SEGURIDAD_ESTUDIANTES + "/buscarEstudiantes.do";

	// Constantes
	public static final String URL_LISTADO_CONSTANTES = SEGURIDAD_CONSTANTES + "/listadoConstantes" + SUFIJO_PAGINACION;
	public static final String URL_LISTADO_CONSTANTES_FILTRADO = SEGURIDAD_CONSTANTES + "/listadoConstantesFiltrado" + SUFIJO_PAGINACION;
	public static final String URL_ALTA_CONSTANTE = SEGURIDAD_CONSTANTES + "/altaConstante.do";
	public static final String URL_INSERTAR_CONSTANTE = SEGURIDAD_CONSTANTES + "/insertarConstante.do";
	public static final String URL_EDITAR_CONSTANTE = SEGURIDAD_CONSTANTES + "/editarConstante.do";
	public static final String URL_ACTUALIZAR_CONSTANTE = SEGURIDAD_CONSTANTES + "/actualizarConstante.do";
	public static final String URL_BORRAR_CONSTANTE = SEGURIDAD_CONSTANTES + "/borrarConstante.do";
    public static final String URL_BUSCAR_CONSTANTES = SEGURIDAD_CONSTANTES + "/buscarConstantes.do";

	
   

	// Ofertas
	public static final String URL_LISTADO_OFERTAS = SEGURIDAD_OFERTAS + "/listadoOfertas" + SUFIJO_PAGINACION;
	public static final String URL_LISTADO_OFERTAS_FILTRADO = SEGURIDAD_OFERTAS + "/listadoOfertasFiltrado" + SUFIJO_PAGINACION;
	public static final String URL_ALTA_OFERTA = SEGURIDAD_OFERTAS + "/altaOferta.do";
	public static final String URL_INSERTAR_OFERTA = SEGURIDAD_OFERTAS + "/insertarOferta.do";
	public static final String URL_EDITAR_OFERTA = SEGURIDAD_OFERTAS + "/editarOferta.do";
	public static final String URL_ACTUALIZAR_OFERTA = SEGURIDAD_OFERTAS + "/actualizarOferta.do";
	public static final String URL_BORRAR_OFERTA = SEGURIDAD_OFERTAS + "/borrarOferta.do";
    public static final String URL_BUSCAR_OFERTAS = SEGURIDAD_OFERTAS + "/buscarOfertas.do";
	
    
    // Comunicaciones
    public static final String URL_LISTADO_COMUNICACIONES = SEGURIDAD_COMUNICACIONES + "/listadoComunicaciones.do";
    public static final String URL_COMUNICACIONES_FORM = SEGURIDAD_COMUNICACIONES + "/altaComunicaciones.do";

    // Gestor
    public static final String URL_ALTA_ESTUDIANTE_GESTOR = "/sec/gestor/altaEstudiante.do";
    public static final String URL_INSERTAR_ESTUDIANTE_GESTOR = "/sec/gestor/insertarEstudiante.do";
    public static final String URL_ALTA_ESTUDIANTE_GESTOR_LISTADO_TITULACIONES = "/sec/gestor/altaEstudianteListadoTitulaciones.do";
    public static final String URL_ALTA_EMPRESA_GESTOR = "/sec/gestor/altaEmpresa.do";

}
