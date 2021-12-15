package es.golemdr.gespracti.controller;



import java.lang.reflect.InvocationTargetException;
import java.text.MessageFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;
import es.golemdr.gespracti.domain.Estudiante;
import es.golemdr.gespracti.domain.form.EstudianteForm;
import es.golemdr.gespracti.ext.Constantes;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionFactory;
import es.golemdr.gespracti.service.EstudiantesService;



@Controller
public class EstudiantesController {

	private static Logger log = LogManager.getLogger(EstudiantesController.class);

	private static final String ESTUDIANTES = "estudiantes";
	private static final String ESTUDIANTE = "estudiante";

	@Autowired
	private EstudiantesService estudiantesService;



	@GetMapping(value=UrlConstants.URL_LISTADO_ESTUDIANTES)
	public String list(@PathVariable("inicio") int inicio,Map<String, Object> map, HttpServletRequest request) {

		List<Estudiante> resultado = null;
        boolean hayFiltro = false;


		PaginacionBean paginacion = new PaginacionBean();
		paginacion.setInicio(inicio - 1);

		resultado = estudiantesService.getEstudiantes(paginacion);

		map.put("paginacion", paginacion);
		map.put(ESTUDIANTES, resultado);
		map.put(ESTUDIANTE,new EstudianteForm());
        map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_ESTUDIANTES;
	}
	
	@GetMapping(value=UrlConstants.URL_ALTA_ESTUDIANTE)
	public String verAltaForm(Map<String, Object> map, HttpServletRequest request) {

		map.put("modo", "insertar");
		map.put(ESTUDIANTE,new EstudianteForm());

		return ForwardConstants.FWD_ESTUDIANTE_FORM;
	}
	

	@PostMapping(value=UrlConstants.URL_INSERTAR_ESTUDIANTE)
	public String insertar(EstudianteForm formulario, Model model) {

		Estudiante entity = new Estudiante();

		try {

			BeanUtils.copyProperties(entity, formulario);

		} catch (IllegalAccessException | InvocationTargetException e) {

			log.error(MessageFormat.format(Constantes.PREFIJO_MENSAJE_ERROR,e.getMessage()));
		}


		estudiantesService.insertarActualizarEstudiante(entity);

		return ForwardConstants.RED_LISTADO_ESTUDIANTES; 
	}


	@PostMapping(value=UrlConstants.URL_EDITAR_ESTUDIANTE)
	public String editar(String idEstudiante, Map<String, Object> map) {

		Estudiante entity = estudiantesService.getById(Long.valueOf(idEstudiante));

		EstudianteForm formulario = new EstudianteForm();

		try {

			BeanUtils.copyProperties(formulario, entity);

		} catch (IllegalAccessException | InvocationTargetException e) {

			log.error(MessageFormat.format(Constantes.PREFIJO_MENSAJE_ERROR,e.getMessage()));
		}


		map.put("modo", "actualizar");
		map.put(ESTUDIANTE,formulario);

		return ForwardConstants.FWD_ESTUDIANTE_FORM;
	}


	@PostMapping(value=UrlConstants.URL_ACTUALIZAR_ESTUDIANTE)
	public String actualizar(@Valid EstudianteForm formulario, BindingResult result, Model model) {


		String destino = null;

		if (result.hasErrors()) {

			model.addAttribute("modo", "actualizar");
			destino = ForwardConstants.FWD_ESTUDIANTE_FORM;

		}else{

			Estudiante entity = new Estudiante();

			try {

				BeanUtils.copyProperties(entity, formulario);

				estudiantesService.insertarActualizarEstudiante(entity);

				destino = ForwardConstants.RED_LISTADO_ESTUDIANTES;


			} catch (IllegalAccessException | InvocationTargetException e) {

				log.error(MessageFormat.format(Constantes.PREFIJO_MENSAJE_ERROR,e.getMessage()));
			}

		}

		return destino;
	}


	@PostMapping(value=UrlConstants.URL_BORRAR_ESTUDIANTE)
	public String borrar(String idEstudiante, Map<String, Object> map) {

		estudiantesService.borrarEstudiante(Long.valueOf(idEstudiante));

		return ForwardConstants.RED_LISTADO_ESTUDIANTES;

	}


	@PostMapping(UrlConstants.URL_BUSCAR_ESTUDIANTES)
	public String buscarEstudiantes(EstudianteForm formulario, Map<String, Object> map, HttpServletRequest request) {

		//Antes de nada quitamos el filtro de sesi?n si lo hay...
		request.getSession(false).removeAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		boolean hayFiltro = true;

		int total = 0;

		paginacion.setInicio(0);

		List<Estudiante> resultado = null;

		Estudiante entity = new Estudiante();

		try {

			BeanUtils.copyProperties(entity, formulario);

			resultado = estudiantesService.findEstudiantesByExample(entity, paginacion);
			total = estudiantesService.countEstudiantesByExample(entity);

		} catch (IllegalAccessException | InvocationTargetException e) {

			log.error(MessageFormat.format(Constantes.PREFIJO_MENSAJE_ERROR,e.getMessage()));
		}

		if(total > paginacion.getElementosXpagina()){

			request.getSession(false).setAttribute(Constantes.ATRIBUTO_SESSION_FILTRO, entity);


		}

		paginacion.setInicio(0);
		paginacion.setTotalRegistros(total);

		map.put(ESTUDIANTES, resultado);
		map.put(ESTUDIANTE,new EstudianteForm());
		map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_ESTUDIANTES;

	}

	@GetMapping(value=UrlConstants.URL_LISTADO_ESTUDIANTES_FILTRADO)
	public String listadoFiltrado(@PathVariable("inicio") int inicio,Model model, HttpServletRequest request) {

		List<Estudiante> resultado = null;
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		Estudiante estudiante = null;
		boolean hayFiltro = true;

		int total = 0;

		Object filtro = request.getSession(false).getAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);

		if(filtro instanceof Estudiante){

			estudiante = (Estudiante)filtro;
		}

		if(inicio > 1) {
			inicio = (inicio - 1) * paginacion.getElementosXpagina();
		}

		paginacion.setInicio(inicio);


		resultado = estudiantesService.findEstudiantesByExample(estudiante, paginacion);
		total = estudiantesService.countEstudiantesByExample(estudiante);

		// Actualizamos la paginaci?n
		paginacion.setInicio(inicio/paginacion.getElementosXpagina());
		paginacion.setTotalRegistros(total);


		model.addAttribute(ESTUDIANTE, new EstudianteForm());
		model.addAttribute(ESTUDIANTES, resultado);
		model.addAttribute(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_ESTUDIANTES;
	}



}
