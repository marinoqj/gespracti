package es.golemdr.gespracti.controller;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;
import es.golemdr.gespracti.domain.form.EmpresaForm;
import es.golemdr.gespracti.domain.form.EstudianteForm;

@Controller
public class NavegacionGestorController {


	@GetMapping(value=UrlConstants.URL_LISTADO_COMUNICACIONES)
	public String listComunicaciones(HttpServletRequest request) {

		return ForwardConstants.FWD_LISTADO_COMUNICACIONES;
	}

	@GetMapping(value=UrlConstants.URL_COMUNICACIONES_FORM)
	public String altaComunicaciones(HttpServletRequest request) {

		return ForwardConstants.FWD_COMUNICACIONES_FORM;
	}

	@GetMapping(value=UrlConstants.URL_ALTA_ESTUDIANTE_GESTOR)
	public String altaEstudiante(Map<String, Object> map, HttpServletRequest request) {
		
		map.put("modo", "insertar");
		map.put("estudianteForm",new EstudianteForm());
		map.put("esAlta", true);

		return ForwardConstants.FWD_ESTUDIANTE_FORM_ALTA_GESTOR;
	}

	@GetMapping(value=UrlConstants.URL_ALTA_EMPRESA_GESTOR)
	public String altaEmpresa(Map<String, Object> map, HttpServletRequest request) {
		
		map.put("modo", "insertar");
		map.put("empresa",new EmpresaForm());		

		return ForwardConstants.FWD_EMPRESA_FORM_ALTA_GESTOR;
	}


}

