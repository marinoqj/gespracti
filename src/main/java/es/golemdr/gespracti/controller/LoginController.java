package es.golemdr.gespracti.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import es.golemdr.gespracti.controller.constantes.ForwardConstants;
import es.golemdr.gespracti.controller.constantes.UrlConstants;
import es.golemdr.gespracti.domain.Usuario;
import es.golemdr.gespracti.ext.Constantes;
import es.golemdr.gespracti.service.UsuariosService;

 
@Controller
public class LoginController {
	


	@Autowired
	private UsuariosService usuariosService;
	
	@GetMapping(value=UrlConstants.URL_VER_LOGIN_PERSONALIZADO)
	public String verLoginPersonalizado(@PathVariable("tipoPortal") String tipoPortal ,Model model,HttpServletRequest request) {
		
		if(tipoPortal.equals("ESTUDIANTE")) {
			
			model.addAttribute("titulo", "Portal de Estudiantes");
			model.addAttribute("paginaRegistro", "pub/altaEstudiante.do");
			model.addAttribute("usuarioPrueba", "estudiante");
			model.addAttribute("passwordPrueba", "estudiante");
			
		}else if(tipoPortal.equals("EMPRESA")) {
			
			model.addAttribute("titulo", "Portal de Empresas");
			model.addAttribute("paginaRegistro", "pub/altaEmpresa.do");
			model.addAttribute("usuarioPrueba", "empresa");
			model.addAttribute("passwordPrueba", "empresa");
		
		}else if(tipoPortal.equals("TUTOR")) {
			
			model.addAttribute("titulo", "Portal de Tutores");
			model.addAttribute("usuarioPrueba", "tutor");
			model.addAttribute("passwordPrueba", "tutor");

		
		}else if(tipoPortal.equals("GESTOR")) {
			
			model.addAttribute("titulo", "Portal de Gestión");
			model.addAttribute("usuarioPrueba", "gestor");
			model.addAttribute("passwordPrueba", "gestor");

		
		}
		
		return ForwardConstants.FWD_LOGIN;
	}
	
	@GetMapping(value=UrlConstants.URL_LOGIN)
	public String verlogin(Model model,HttpServletRequest request) {
		
		return ForwardConstants.FWD_LOGIN;
	}
	
	@PostMapping(value=UrlConstants.URL_LOGIN)
	public String login(Model model,HttpServletRequest request) {
		
		return ForwardConstants.FWD_HOME;
	}
	
	@GetMapping(value=UrlConstants.URL_LOGIN_FAILURE)
 	public String loginFailure(Model model) {
		
		String mensaje = "Usuario o password incorrectos";
		
		model.addAttribute("mensaje", mensaje);
		
		return ForwardConstants.FWD_LOGIN;
	}
	
    @GetMapping(value=UrlConstants.URL_ACCESO_OK)
    public String loginPage() {
    	
    	return ForwardConstants.FWD_HOME;
    }
    
	@GetMapping(value=UrlConstants.URL_ENTRADA_APLICACION)
	public String inicio(Model model,HttpServletRequest request) {
		
		String destino = null;
		
		String login = SecurityContextHolder.getContext().getAuthentication().getName(); // En este caso login y name son equivalentes
		Usuario usuarioLogado = new Usuario();
		usuarioLogado.setLogin(login);
		
		
		usuarioLogado = usuariosService.getByExample(usuarioLogado);
		
		if(usuarioLogado.getCambiarPassword().equals(Constantes.SI)) {
				
			// TODO - Implementar cambio de password
			
		}else {

			HttpSession session = request.getSession(false);
			session.setAttribute(Constantes.ATRIBUTO_SESSION_USUARIO, usuarioLogado);
			

			destino = ForwardConstants.FWD_HOME;

			
		}
		
		return destino;
	}
  

}
