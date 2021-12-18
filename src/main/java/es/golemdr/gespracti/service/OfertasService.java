package es.golemdr.gespracti.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import es.golemdr.gespracti.domain.Oferta;
import es.golemdr.gespracti.repository.OfertasRepository;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;

@Service
public class OfertasService {

		@Autowired
		private OfertasRepository ofertasRepository;


		public List<Oferta> getOfertas() {

			return ofertasRepository.findAll();

		}


		public List<Oferta> getOfertas(PaginacionBean paginacionBean) {

			Pageable paginacion = PageRequest.of(paginacionBean.getInicio(),paginacionBean.getElementosXpagina());

			paginacionBean.setTotalRegistros(getTotalOfertas());

			return ofertasRepository.findAll(paginacion).getContent();

		}


		public int getTotalOfertas(){

			return ofertasRepository.findAll().size();

		}


		public Oferta insertarActualizarOferta(Oferta oferta) {

			return ofertasRepository.save(oferta);

		}


		public Oferta getById(Long idOferta) {

			Oferta resultado = null;

			Optional<Oferta> oferta = ofertasRepository.findById(idOferta);

			if(oferta.isPresent()) {
				resultado = oferta.get();
			}

			return resultado;

		}


		public void borrarOferta(Long idOferta) {

			ofertasRepository.deleteById(idOferta);

		}

		public List<Oferta> findOfertasByExample(Oferta oferta, PaginacionBean paginacion) {

			return ofertasRepository.findOfertas(oferta, paginacion);

		}

		public int countOfertasByExample(Oferta oferta) {

			return ofertasRepository.findOfertas(oferta, null).size();

		}

}

