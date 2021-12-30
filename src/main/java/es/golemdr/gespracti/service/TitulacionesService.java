package es.golemdr.gespracti.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.golemdr.gespracti.domain.Sede;
import es.golemdr.gespracti.domain.Titulacion;
import es.golemdr.gespracti.repository.TitulacionesRepository;

@Service
public class TitulacionesService {

		@Autowired
		private TitulacionesRepository titulacionesRepository;


		public List<Titulacion> getTitulaciones() {

			return titulacionesRepository.findAll();

		}


		public int getTotalTitulaciones(){

			return titulacionesRepository.findAll().size();

		}


		public Titulacion insertarActualizarTitulacion(Titulacion titulacion) {

			return titulacionesRepository.save(titulacion);

		}


		public Titulacion getById(Long idTitulacion) {

			Titulacion resultado = null;

			Optional<Titulacion> titulacion = titulacionesRepository.findById(idTitulacion);

			if(titulacion.isPresent()) {
				resultado = titulacion.get();
			}

			return resultado;

		}
		
		public List<Titulacion> findByIdSede(Sede sede) {

			return titulacionesRepository.findBySedeOrderByNombreAsc(sede);

		}



		public void borrarTitulacion(Long idTitulacion) {

			titulacionesRepository.deleteById(idTitulacion);

		}

}

