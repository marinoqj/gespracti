package es.golemdr.gespracti.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import es.golemdr.gespracti.domain.Empresa;
import es.golemdr.gespracti.repository.EmpresasRepository;
import es.golemdr.gespracti.ext.utils.paginacion.PaginacionBean;

@Service
public class EmpresasService {

		@Autowired
		private EmpresasRepository empresasRepository;


		public List<Empresa> getEmpresas() {

			return empresasRepository.findAll();

		}


		public List<Empresa> getEmpresas(PaginacionBean paginacionBean) {

			Pageable paginacion = PageRequest.of(paginacionBean.getInicio(),paginacionBean.getElementosXpagina());

			paginacionBean.setTotalRegistros(getTotalEmpresas());

			return empresasRepository.findAll(paginacion).getContent();

		}


		public int getTotalEmpresas(){

			return empresasRepository.findAll().size();

		}


		public Empresa insertarActualizarEmpresa(Empresa empresa) {

			return empresasRepository.save(empresa);

		}


		public Empresa getById(Long idEmpresa) {

			Empresa resultado = null;

			Optional<Empresa> empresa = empresasRepository.findById(idEmpresa);

			if(empresa.isPresent()) {
				resultado = empresa.get();
			}

			return resultado;

		}


		public void borrarEmpresa(Long idEmpresa) {

			empresasRepository.deleteById(idEmpresa);

		}

		public List<Empresa> findEmpresasByExample(Empresa empresa, PaginacionBean paginacion) {

			return empresasRepository.findEmpresas(empresa, paginacion);

		}

		public int countEmpresasByExample(Empresa empresa) {

			return empresasRepository.findEmpresas(empresa, null).size();

		}

}

