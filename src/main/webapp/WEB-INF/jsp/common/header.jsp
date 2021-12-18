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
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href='<spring:url value="/inicio.do"/>'>Inicio <span class="sr-only">(current)</span></a>
                </li>
	      		  <li class="nav-item dropdown active">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          Empresas
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href='<spring:url value="/sec/listadoEmpresas1.do"/>'>Listado empresas</a>
						<a class="dropdown-item" href="#">Prácticas en curso</a>
						<a class="dropdown-item" href="#">Ofertas</a>
						<a class="dropdown-item" href="#">Mis tareas</a>
			        </div>
			      </li>				      
	      		  <li class="nav-item dropdown active">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          Estudiantes
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						 <a class="dropdown-item" href='<spring:url value="/sec/listadoEstudiantes1.do"/>'>Listado estudiantes</a>
						<a class="dropdown-item" href="#">Ofertas de prácticas</a>
						<a class="dropdown-item" href="#">Mi CV</a>
						<a class="dropdown-item" href="#">Mis candidaturas</a>
						<a class="dropdown-item" href="#">Mis prácticas</a>
			        </div>
			      </li>
			      <li class="nav-item active">
			        <a class="nav-link" href='<spring:url value="/sec/listadoConstantes1.do"/>'>Constantes</a>
			      </li>
			      <li class="nav-item active">
			        <a class="nav-link" href='<spring:url value="/sec/listadoOfertas1.do"/>'>Ofertas</a>
			      </li>			      
			    </ul>
			    <ul class="navbar-nav">
			      <li class="nav-item dropdown active">
			        <a class="nav-link dropdown-toggle"  href="#" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
			          aria-haspopup="true" aria-expanded="false">
			          Margarita Salas &nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-user-circle fa-lg"></i>
			        </a>
			        <div class="dropdown-menu dropdown-menu-right dropdown-default"
			          aria-labelledby="navbarDropdownMenuLink-333">
			          <a class="dropdown-item" href="#">Mi perfil</a>
			          <a class="dropdown-item" href="#">Cerrar sesión</a>
			        </div>
			      </li>
			    </ul>
			  </div>
			  </div>
			</nav>			
						
			<!-- FIN Menú -->



