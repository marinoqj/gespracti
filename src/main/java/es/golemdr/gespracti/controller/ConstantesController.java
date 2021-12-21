package es.golemdr.gespracti.controller;



import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
import java.text.MessageFormat;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.beanutils.BeanUtils;


import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import es.golemdr.gespracti.ext.Constantes;
import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;
import es.golemdr.gespracti.domain.Constante;
import es.golemdr.gespracti.domain.form.ConstanteForm;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionFactory;
import es.golemdr.gespracti.service.ConstantesService;



@Controller
public class ConstantesController {

	
	private static final String CONSTANTES = "constantes";
	private static final String CONSTANTE = "constante";

	@Autowired
	private ConstantesService constantesService;



	@GetMapping(value=UrlConstants.URL_LISTADO_CONSTANTES)
	public String list(@PathVariable("inicio") int inicio,Map<String, Object> map, HttpServletRequest request) {

		List<Constante> resultado = null;
        boolean hayFiltro = false;


		PaginacionBean paginacion = new PaginacionBean();
		paginacion.setInicio(inicio - 1);

		resultado = constantesService.getConstantes(paginacion);

		map.put("paginacion", paginacion);
		map.put(CONSTANTES, resultado);
		map.put(CONSTANTE,new ConstanteForm());
        map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_CONSTANTES;
	}


	@PostMapping(value=UrlConstants.URL_INSERTAR_CONSTANTE)
	public String insertar(ConstanteForm formulario, Model model) {

		Constante entity = new Constante();

		try {

			BeanUtils.copyProperties(entity, formulario);

		} catch (IllegalAccessException | InvocationTargetException e) {

			
		}


		constantesService.insertarActualizarConstante(entity);

		return ForwardConstants.RED_LISTADO_CONSTANTES; 
	}


	@PostMapping(value=UrlConstants.URL_EDITAR_CONSTANTE)
	public String editar(String idConstante, Map<String, Object> map) {

		Constante entity = constantesService.getById(Long.valueOf(idConstante));

		ConstanteForm formulario = new ConstanteForm();

		try {

			BeanUtils.copyProperties(formulario, entity);

		} catch (IllegalAccessException | InvocationTargetException e) {

			
		}


		map.put("modo", "actualizar");
		map.put(CONSTANTE,formulario);

		return ForwardConstants.FWD_CONSTANTE_FORM;
	}


	@PostMapping(value=UrlConstants.URL_ACTUALIZAR_CONSTANTE)
	public String actualizar(@Valid ConstanteForm formulario, BindingResult result, Model model) {


		String destino = null;

		if (result.hasErrors()) {

			model.addAttribute("modo", "actualizar");
			destino = ForwardConstants.FWD_CONSTANTE_FORM;

		}else{

			Constante entity = new Constante();

			try {

				BeanUtils.copyProperties(entity, formulario);

				constantesService.insertarActualizarConstante(entity);

				destino = ForwardConstants.RED_LISTADO_CONSTANTES;


			} catch (IllegalAccessException | InvocationTargetException e) {

				
			}

		}

		return destino;
	}


	@PostMapping(value=UrlConstants.URL_BORRAR_CONSTANTE)
	public String borrar(String idConstante, Map<String, Object> map) {

		constantesService.borrarConstante(Long.valueOf(idConstante));

		return ForwardConstants.RED_LISTADO_CONSTANTES;

	}


	@PostMapping(UrlConstants.URL_BUSCAR_CONSTANTES)
	public String buscarConstantes(ConstanteForm formulario, Map<String, Object> map, HttpServletRequest request) {

		//Antes de nada quitamos el filtro de sesi?n si lo hay...
		request.getSession(false).removeAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		boolean hayFiltro = true;

		int total = 0;

		paginacion.setInicio(0);

		List<Constante> resultado = null;

		Constante entity = new Constante();

		try {

			BeanUtils.copyProperties(entity, formulario);

			resultado = constantesService.findConstantesByExample(entity, paginacion);
			total = constantesService.countConstantesByExample(entity);

		} catch (IllegalAccessException | InvocationTargetException e) {

			
		}

		if(total > paginacion.getElementosXpagina()){

			request.getSession(false).setAttribute(Constantes.ATRIBUTO_SESSION_FILTRO, entity);


		}

		paginacion.setInicio(0);
		paginacion.setTotalRegistros(total);

		map.put(CONSTANTES, resultado);
		map.put(CONSTANTE,new ConstanteForm());
		map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_CONSTANTES;

	}

	@GetMapping(value=UrlConstants.URL_LISTADO_CONSTANTES_FILTRADO)
	public String listadoFiltrado(@PathVariable("inicio") int inicio,Model model, HttpServletRequest request) {

		List<Constante> resultado = null;
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		Constante constante = null;
		boolean hayFiltro = true;

		int total = 0;

		Object filtro = request.getSession(false).getAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);

		if(filtro instanceof Constante){

			constante = (Constante)filtro;
		}

		if(inicio > 1) {
			inicio = (inicio - 1) * paginacion.getElementosXpagina();
		}

		paginacion.setInicio(inicio);


		resultado = constantesService.findConstantesByExample(constante, paginacion);
		total = constantesService.countConstantesByExample(constante);

		// Actualizamos la paginaci?n
		paginacion.setInicio(inicio/paginacion.getElementosXpagina());
		paginacion.setTotalRegistros(total);


		model.addAttribute(CONSTANTE, new ConstanteForm());
		model.addAttribute(CONSTANTES, resultado);
		model.addAttribute(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_CONSTANTES;
	}



}

