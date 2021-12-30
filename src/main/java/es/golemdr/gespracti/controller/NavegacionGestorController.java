package es.golemdr.gespracti.controller;



import java.lang.reflect.InvocationTargetException;
import java.sql.Date;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;
import es.golemdr.gespracti.domain.Estudiante;
import es.golemdr.gespracti.domain.Rol;
import es.golemdr.gespracti.domain.Roles;
import es.golemdr.gespracti.domain.Sede;
import es.golemdr.gespracti.domain.Titulacion;
import es.golemdr.gespracti.domain.Usuario;
import es.golemdr.gespracti.domain.form.EmpresaForm;
import es.golemdr.gespracti.domain.form.EstudianteForm;
import es.golemdr.gespracti.ext.Constantes;
import es.golemdr.gespracti.ext.utils.tools.FormateadorFechas;
import es.golemdr.gespracti.service.EstudiantesService;
import es.golemdr.gespracti.service.SedesService;
import es.golemdr.gespracti.service.TitulacionesService;

@Controller
public class NavegacionGestorController {
	
	@Autowired
	private SedesService sedesService;

	@Autowired
	private TitulacionesService titulacionesService;
	
	@Autowired
	private EstudiantesService estudiantesService;	


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
		
		List<Sede> listSedes = sedesService.getSedes();
		
		map.put("sedes", listSedes);
		
		List<Titulacion> listTitulaciones = new ArrayList<Titulacion>();
		
		map.put("titulaciones", listTitulaciones);
		

		return ForwardConstants.FWD_ESTUDIANTE_FORM_ALTA_GESTOR;
	}
	
	
	@PostMapping(value=UrlConstants.URL_ALTA_ESTUDIANTE_GESTOR_LISTADO_TITULACIONES)
	public String altaEstudianteListTitulaciones(@RequestParam("idSede") Long idSede, EstudianteForm formulario, Map<String, Object> map, HttpServletRequest request) {
		
		formulario.setSede(idSede);
	
		map.put("modo", "insertar");
		map.put("estudianteForm",formulario);
		map.put("esAlta", true);
		
		List<Sede> listSedes = sedesService.getSedes();
		
		map.put("sedes", listSedes);
		
		Sede sede = new Sede();
		sede.setIdSede(idSede);
		
		List<Titulacion> listTitulaciones = titulacionesService.findByIdSede(sede);
		
		map.put("titulaciones", listTitulaciones);
		

		return ForwardConstants.FWD_ESTUDIANTE_FORM_ALTA_GESTOR;
	}
	
	@PostMapping(value=UrlConstants.URL_INSERTAR_ESTUDIANTE_GESTOR)
	public String insertar(@RequestParam("idTitulacion") Long idTitulacion, EstudianteForm formulario, BindingResult result, Model model) throws ParseException {

		String destino = null;
		Estudiante entity = new Estudiante();
		
		if (result.hasErrors()) {

			model.addAttribute("modo", "insertar");
			destino =  ForwardConstants.FWD_ESTUDIANTE_FORM_ALTA_GESTOR;
			
		}else {
			
			try {

				formulario.setTitulacionUpm(idTitulacion);
				
				BeanUtils.copyProperties(entity, formulario);
				
				String fechaFormateada = null;
				
				fechaFormateada = FormateadorFechas.cambiaFormato(formulario.getFechaNacimientoS(), "dd/MM/yyyy", "yyyy-MM-dd");
				entity.setFechaNacimiento(Date.valueOf(fechaFormateada));
				
				fechaFormateada = FormateadorFechas.cambiaFormato(formulario.getFechaInicioS(), "dd/MM/yyyy", "yyyy-MM-dd");
				entity.setFechaInicio(Date.valueOf(fechaFormateada));
				
				fechaFormateada = FormateadorFechas.cambiaFormato(formulario.getFechaFinS(), "dd/MM/yyyy", "yyyy-MM-dd");
				entity.setFechaFin(Date.valueOf(fechaFormateada));
				
				Usuario usuario = new Usuario();
				usuario.setLogin(formulario.getLogin());
				usuario.setPassword(formulario.getPassword());
				usuario.setCambiarPassword(Constantes.NO);
				
				Rol rol = new Rol();
				rol.setIdRol(Roles.ADMIN.getIdRol());
				
				usuario.getRoles().add(rol);
				
				entity.setUsuario(usuario);
				
				

			} catch (IllegalAccessException | InvocationTargetException e) {

			}


			estudiantesService.insertarActualizarEstudiante(entity);
			
			model.addAttribute("titulo", "Portal de Estudiantes");
			
			destino = ForwardConstants.FWD_LOGIN; 
			
		}

		return destino; 
	}
	
	
	
	

	@GetMapping(value=UrlConstants.URL_ALTA_EMPRESA_GESTOR)
	public String altaEmpresa(Map<String, Object> map, HttpServletRequest request) {
		
		map.put("modo", "insertar");
		map.put("empresa",new EmpresaForm());		

		return ForwardConstants.FWD_EMPRESA_FORM_ALTA_GESTOR;
	}
	
}

