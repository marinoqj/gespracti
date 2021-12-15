package es.golemdr.gespracti.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import es.golemdr.gespracti.domain.Estudiante;
import es.golemdr.gespracti.repository.EstudiantesRepository;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;

@Service
public class EstudiantesService {

		@Autowired
		private EstudiantesRepository estudiantesRepository;


		public List<Estudiante> getEstudiantes() {

			return estudiantesRepository.findAll();

		}


		public List<Estudiante> getEstudiantes(PaginacionBean paginacionBean) {

			Pageable paginacion = PageRequest.of(paginacionBean.getInicio(),paginacionBean.getElementosXpagina());

			return estudiantesRepository.findAll(paginacion).getContent();

		}


		public int getTotalEstudiantes(){

			return estudiantesRepository.findAll().size();

		}


		public Estudiante insertarActualizarEstudiante(Estudiante estudiante) {

			return estudiantesRepository.save(estudiante);

		}


		public Estudiante getById(Long idEstudiante) {

			Estudiante resultado = null;

			Optional<Estudiante> estudiante = estudiantesRepository.findById(idEstudiante);

			if(estudiante.isPresent()) {
				resultado = estudiante.get();
			}

			return resultado;

		}


		public void borrarEstudiante(Long idEstudiante) {

			estudiantesRepository.deleteById(idEstudiante);

		}

		public List<Estudiante> findEstudiantesByExample(Estudiante estudiante, PaginacionBean paginacion) {

			return estudiantesRepository.findEstudiantes(estudiante, paginacion);

		}

		public int countEstudiantesByExample(Estudiante estudiante) {

			return estudiantesRepository.findEstudiantes(estudiante, null).size();

		}

}

