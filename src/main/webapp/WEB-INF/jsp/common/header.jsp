<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>


<!-- Menú -->

<nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar py-0" style="background-color: #1867b7 !important;">
    <div class="container">
        <a class="navbar-brand" href="#"> <img src='<spring:url value="/static/imagenes/upm-logo.png"/>'
                                               class="d-inline-block"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
           
           <sec:authorize access="hasRole('ADMIN')"> 
            <ul class="navbar-nav mr-auto">            	
                <li class="nav-item active">
                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Inicio <span class="sr-only">(current)</span></a>
                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='<spring:url value="/sec/listadoEmpresas1.do"/>'>Empresas</a>
	                </li>                
	                <li class="nav-item">
	                    <a class="nav-link" href='<spring:url value="/sec/listadoEstudiantes1.do"/>'>Candidatos</a>
	                </li>                
				      <li class="nav-item active">
				        <a class="nav-link" href='<spring:url value="/sec/listadoOfertas1.do"/>'>Ofertas</a>
				      </li>
				      <li class="nav-item active">
				        <a class="nav-link" href='#'>Prácticas</a>
				      </li>				      
				      <li class="nav-item active">
				        <a class="nav-link" href='#'>Tutores</a>
				      </li>
				      <li class="nav-item active">
				        <a class="nav-link" href='#'>Estudios</a>
				      </li>
				      <li class="nav-item active">
				        <a class="nav-link" href='#'>Usuarios</a>
				      </li>	
				      <li class="nav-item active">
				        <a class="nav-link" href='#'>Informes</a>
				      </li>
				      <li class="nav-item active">
				        <a class="nav-link" href='#'>Comunicaciones</a>
				      </li>					      				      				      					      				      
			    </ul>
			    </sec:authorize>
				<sec:authorize access="hasRole('ESTUDIANTE')">
				<ul class="navbar-nav mr-auto">
	                <li class="nav-item active">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Inicio <span class="sr-only">(current)</span></a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Ofertas de prácticas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Mi CV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Mis candidaturas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Mis prácticas</a>
	                </li>                
			    </ul>
			    </sec:authorize>
			    <sec:authorize access="hasRole('TUTOR')">
				<ul class="navbar-nav mr-auto">
	                <li class="nav-item active">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Inicio <span class="sr-only">(current)</span></a>
	                </li>
      		 	 <li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			         Prácticas tutorizadas
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Activas</a>
						<a class="dropdown-item" href="#">Histórico</a>
			        </div>
			      </li>
			    </ul>
			    </sec:authorize>
			    <sec:authorize access="hasRole('EMPRESA')">
				<ul class="navbar-nav mr-auto">
	                <li class="nav-item active">
	                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Inicio <span class="sr-only">(current)</span></a>
	                </li>
      		 	 <li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          Ofertas
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Nueva oferta</a>
						<a class="dropdown-item" href="#">Ofertas vigentes</a>
						<a class="dropdown-item" href="#">Histórico</a>
			        </div>
			      </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='#'>Prácticas</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href='#'>Mis tareas</a>
	                </li>
			    </ul>
			    </sec:authorize>			    
			    <ul class="navbar-nav">
			      <li class="nav-item dropdown active">
			        <a class="nav-link dropdown-toggle"  href="#" id="navbarDropdownMenuLink-333" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          ${usuarioSesion.login} &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-user-circle fa-lg"></i>
			        </a>
			        <div class="dropdown-menu dropdown-menu-right dropdown-default"
			          aria-labelledby="navbarDropdownMenuLink-333">
			          <a class="dropdown-item" href="#">Mi perfil</a>
			          <a class="dropdown-item" href='<spring:url value="/logout.do"/>'>Cerrar sesión</a>
			        </div>
			      </li>
			    </ul>
			  </div>
			  </div>
			</nav>			
						
			<!-- FIN Menú -->



