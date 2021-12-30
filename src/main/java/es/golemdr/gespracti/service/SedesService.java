package es.golemdr.gespracti.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.golemdr.gespracti.domain.Sede;
import es.golemdr.gespracti.repository.SedesRepository;

@Service
public class SedesService {

		@Autowired
		private SedesRepository sedesRepository;


		public List<Sede> getSedes() {

			return sedesRepository.findAllByOrderByNombreAsc();

		}


		public int getTotalSedes(){

			return sedesRepository.findAll().size();

		}


		public Sede insertarActualizarSede(Sede sede) {

			return sedesRepository.save(sede);

		}


		public Sede getById(Long idSede) {

			Sede resultado = null;

			Optional<Sede> sede = sedesRepository.findById(idSede);

			if(sede.isPresent()) {
				resultado = sede.get();
			}

			return resultado;

		}


		public void borrarSede(Long idSede) {

			sedesRepository.deleteById(idSede);

		}

}

