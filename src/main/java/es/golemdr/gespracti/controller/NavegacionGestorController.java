package es.golemdr.gespracti.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;

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


}

