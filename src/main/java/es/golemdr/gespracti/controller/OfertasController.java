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
import es.golemdr.gespracti.domain.Oferta;
import es.golemdr.gespracti.domain.form.OfertaForm;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionFactory;
import es.golemdr.gespracti.service.OfertasService;



@Controller
public class OfertasController {



	private static final String OFERTAS = "ofertas";
	private static final String OFERTA = "oferta";

	@Autowired
	private OfertasService ofertasService;



	@GetMapping(value=UrlConstants.URL_LISTADO_OFERTAS)
	public String list(@PathVariable("inicio") int inicio,Map<String, Object> map, HttpServletRequest request) {

		List<Oferta> resultado = null;
        boolean hayFiltro = false;


		PaginacionBean paginacion = new PaginacionBean();
		paginacion.setInicio(inicio - 1);

		resultado = ofertasService.getOfertas(paginacion);

		map.put("paginacion", paginacion);
		map.put(OFERTAS, resultado);
		map.put(OFERTA,new OfertaForm());
        map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_OFERTAS;
	}


	@PostMapping(value=UrlConstants.URL_INSERTAR_OFERTA)
	public String insertar(OfertaForm formulario, Model model) {

		Oferta entity = new Oferta();

		try {

			BeanUtils.copyProperties(entity, formulario);

		} catch (IllegalAccessException | InvocationTargetException e) {


		}


		ofertasService.insertarActualizarOferta(entity);

		return ForwardConstants.RED_LISTADO_OFERTAS; 
	}


	@PostMapping(value=UrlConstants.URL_EDITAR_OFERTA)
	public String editar(String idOferta, Map<String, Object> map) {

		Oferta entity = ofertasService.getById(Long.valueOf(idOferta));

		OfertaForm formulario = new OfertaForm();

		try {

			BeanUtils.copyProperties(formulario, entity);

		} catch (IllegalAccessException | InvocationTargetException e) {


		}


		map.put("modo", "actualizar");
		map.put(OFERTA,formulario);

		return ForwardConstants.FWD_OFERTA_FORM;
	}


	@PostMapping(value=UrlConstants.URL_ACTUALIZAR_OFERTA)
	public String actualizar(@Valid OfertaForm formulario, BindingResult result, Model model) {


		String destino = null;

		if (result.hasErrors()) {

			model.addAttribute("modo", "actualizar");
			destino = ForwardConstants.FWD_OFERTA_FORM;

		}else{

			Oferta entity = new Oferta();

			try {

				BeanUtils.copyProperties(entity, formulario);

				ofertasService.insertarActualizarOferta(entity);

				destino = ForwardConstants.RED_LISTADO_OFERTAS;


			} catch (IllegalAccessException | InvocationTargetException e) {


			}

		}

		return destino;
	}


	@PostMapping(value=UrlConstants.URL_BORRAR_OFERTA)
	public String borrar(String idOferta, Map<String, Object> map) {

		ofertasService.borrarOferta(Long.valueOf(idOferta));

		return ForwardConstants.RED_LISTADO_OFERTAS;

	}


	@PostMapping(UrlConstants.URL_BUSCAR_OFERTAS)
	public String buscarOfertas(OfertaForm formulario, Map<String, Object> map, HttpServletRequest request) {

		//Antes de nada quitamos el filtro de sesi?n si lo hay...
		request.getSession(false).removeAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		boolean hayFiltro = true;

		int total = 0;

		paginacion.setInicio(0);

		List<Oferta> resultado = null;

		Oferta entity = new Oferta();

		try {

			BeanUtils.copyProperties(entity, formulario);

			resultado = ofertasService.findOfertasByExample(entity, paginacion);
			total = ofertasService.countOfertasByExample(entity);

		} catch (IllegalAccessException | InvocationTargetException e) {


		}

		if(total > paginacion.getElementosXpagina()){

			request.getSession(false).setAttribute(Constantes.ATRIBUTO_SESSION_FILTRO, entity);


		}

		paginacion.setInicio(0);
		paginacion.setTotalRegistros(total);

		map.put(OFERTAS, resultado);
		map.put(OFERTA,new OfertaForm());
		map.put(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_OFERTAS;

	}

	@GetMapping(value=UrlConstants.URL_LISTADO_OFERTAS_FILTRADO)
	public String listadoFiltrado(@PathVariable("inicio") int inicio,Model model, HttpServletRequest request) {

		List<Oferta> resultado = null;
		PaginacionBean paginacion = PaginacionFactory.getPaginacionBean(request);
		Oferta oferta = null;
		boolean hayFiltro = true;

		int total = 0;

		Object filtro = request.getSession(false).getAttribute(Constantes.ATRIBUTO_SESSION_FILTRO);

		if(filtro instanceof Oferta){

			oferta = (Oferta)filtro;
		}

		if(inicio > 1) {
			inicio = (inicio - 1) * paginacion.getElementosXpagina();
		}

		paginacion.setInicio(inicio);


		resultado = ofertasService.findOfertasByExample(oferta, paginacion);
		total = ofertasService.countOfertasByExample(oferta);

		// Actualizamos la paginaci?n
		paginacion.setInicio(inicio/paginacion.getElementosXpagina());
		paginacion.setTotalRegistros(total);


		model.addAttribute(OFERTA, new OfertaForm());
		model.addAttribute(OFERTAS, resultado);
		model.addAttribute(Constantes.ATRIBUTO_SESSION_HAY_FILTRO, hayFiltro);

		return ForwardConstants.FWD_LISTADO_OFERTAS;
	}



}

