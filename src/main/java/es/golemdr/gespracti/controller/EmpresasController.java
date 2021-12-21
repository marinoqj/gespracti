package es.golemdr.gespracti.controller;



import java.lang.reflect.InvocationTargetException;
import java.text.MessageFormat;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;
import es.golemdr.gespracti.domain.Empresa;
import es.golemdr.gespracti.domain.form.EmpresaForm;
import es.golemdr.gespracti.domain.form.EstudianteForm;
import es.golemdr.gespracti.ext.Constantes;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionFactory;
import es.golemdr.gespracti.service.EmpresasService;



@Controller
public class EmpresasController {



	private static final String EMPRESAS = "empresas";
	private static final String EMPRESA = "empresa";

	@Autowired
	private EmpresasService empresasService;



	@GetMapping(value=UrlConstants.URL_LISTADO_EMPRESAS)
	public String list(@PathVariable("inicio") int inicio,Map<String, Object> map, HttpServletRequest request) {

		List<Empresa> resultado = null;
        boolean hayFiltro = false;


		PaginacionBean paginacion = new PaginacionBean();
		paginacion.setInicio(inicio - 1);

		resultado = empresasService.getEmpresas(paginacion);

		map.put("paginacion", paginacion);
		map.put(EMPRESAS, resultado);
		map.put(EMPRESA,new EmpresaForm());
        map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_EMPRESAS;
	}

	@GetMapping(value=UrlConstants.URL_ALTA_EMPRESA)
	public String verAltaForm(Map<String, Object> map, HttpServletRequest request) {

		map.put("modo", "insertar");
		map.put(EMPRESA,new EmpresaForm());

		return ForwardConstants.FWD_EMPRESA_FORM;
	}

	@PostMapping(value=UrlConstants.URL_INSERTAR_EMPRESA)
	public String insertar(EmpresaForm formulario, Model model) {

		Empresa entity = new Empresa();

		try {

			BeanUtils.copyProperties(entity, formulario);

		} catch (IllegalAccessException | InvocationTargetException e) {


		}


		empresasService.insertarActualizarEmpresa(entity);

		return ForwardConstants.RED_LISTADO_EMPRESAS; 
	}


	@PostMapping(value=UrlConstants.URL_EDITAR_EMPRESA)
	public String editar(String idEmpresa, Map<String, Object> map) {

		Empresa entity = empresasService.getById(Long.valueOf(idEmpresa));

		EmpresaForm formulario = new EmpresaForm();

		try {

			BeanUtils.copyProperties(formulario, entity);

		} catch (IllegalAccessException | InvocationTargetException e) {


		}


		map.put("modo", "actualizar");
		map.put(EMPRESA,formulario);

		return ForwardConstants.FWD_EMPRESA_FORM;
	}


	@PostMapping(value=UrlConstants.URL_ACTUALIZAR_EMPRESA)
	public String actualizar(@Valid EmpresaForm formulario, BindingResult result, Model model) {


		String destino = null;

		if (result.hasErrors()) {

			model.addAttribute("modo", "actualizar");
			destino = ForwardConstants.FWD_EMPRESA_FORM;

		}else{

			Empresa entity = new Empresa();

			try {

				BeanUtils.copyProperties(entity, formulario);

				empresasService.insertarActualizarEmpresa(entity);

				destino = ForwardConstants.RED_LISTADO_EMPRESAS;


			} catch (IllegalAccessException | InvocationTargetException e) {


			}

		}

		return destino;
	}


	@PostMapping(value=UrlConstants.URL_BORRAR_EMPRESA)
	public String borrar(String idEmpresa, Map<String, Object> map) {

		empresasService.borrarEmpresa(Long.valueOf(idEmpresa));

		return ForwardConstants.RED_LISTADO_EMPRESAS;

	}


	@PostMapping(UrlConstants.URL_BUSCAR_EMPRESAS)
	public String buscarEmpresas(EmpresaForm formulario, Map<String, Object> map, HttpServletRequest request) {

		//Antes de nada quitamos el filtro de sesi?n si lo hay...
		request.getSession(false).removeAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		boolean hayFiltro = true;

		int total = 0;

		paginacion.setInicio(0);

		List<Empresa> resultado = null;

		Empresa entity = new Empresa();

		try {

			BeanUtils.copyProperties(entity, formulario);

			resultado = empresasService.findEmpresasByExample(entity, paginacion);
			total = empresasService.countEmpresasByExample(entity);

		} catch (IllegalAccessException | InvocationTargetException e) {


		}

		if(total > paginacion.getElementosXpagina()){

			request.getSession(false).setAttribute(Constantes.ATRIBUTO_SESSION_FILTRO, entity);


		}

		paginacion.setInicio(0);
		paginacion.setTotalRegistros(total);

		map.put(EMPRESAS, resultado);
		map.put(EMPRESA,new EmpresaForm());
		map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_EMPRESAS;

	}

	@GetMapping(value=UrlConstants.URL_LISTADO_EMPRESAS_FILTRADO)
	public String listadoFiltrado(@PathVariable("inicio") int inicio,Model model, HttpServletRequest request) {

		List<Empresa> resultado = null;
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		Empresa empresa = null;
		boolean hayFiltro = true;

		int total = 0;

		Object filtro = request.getSession(false).getAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);

		if(filtro instanceof Empresa){

			empresa = (Empresa)filtro;
		}

		if(inicio > 1) {
			inicio = (inicio - 1) * paginacion.getElementosXpagina();
		}

		paginacion.setInicio(inicio);


		resultado = empresasService.findEmpresasByExample(empresa, paginacion);
		total = empresasService.countEmpresasByExample(empresa);

		// Actualizamos la paginaci?n
		paginacion.setInicio(inicio/paginacion.getElementosXpagina());
		paginacion.setTotalRegistros(total);


		model.addAttribute(EMPRESA, new EmpresaForm());
		model.addAttribute(EMPRESAS, resultado);
		model.addAttribute(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_EMPRESAS;
	}



}

