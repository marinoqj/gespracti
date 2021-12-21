<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp"%>

<br>
<br>
<br>
<br>

<div class="container pt-5">


    <!--Section: Content-->
    <section class="dark-grey-text p-sup-100">
    
    
        <div class="row">
            <div class="col text-center">
                <h3 class="font-weight-bold">Gestión de Prácticas de la UPM</h3>
                <p class="pink-text">Seleccione un portal dependiendo de su perfil</p>
            </div>
        </div>

        <div class="row pt-5">
            <div class="col-lg-3 text-center py-3">
            	<a href='<spring:url value="/verLoginESTUDIANTE.do"/>' title="Acceso al portal de estudiantes">
                <img src="<spring:url value="/static/imagenes/portal_estudiantes.png" />"  class="img-fluid rounded-circle w-75 pb-3" alt="Portal Estudiantes">
                <br>
                <span class="text-primary pt-3 h5-responsive">Portal Estudiantes</span>
                </a>
            </div>
            <div class="col-lg-3 text-center py-3">
            	<a href='<spring:url value="/verLoginEMPRESA.do"/>' title="Acceso al portal de empresas">
                <img src="<spring:url value="/static/imagenes/portal_empresas.png" />"  class="img-fluid z-depth-1 rounded-circle w-75 pb-3" alt="Portal Empresas">
                <br>
                <span class="text-primary pt-3 h5-responsive">Portal Empresas</span>
                </a>
            </div>
            <div class="col-lg-3 text-center py-3">
           		<a href='<spring:url value="/verLoginTUTOR.do"/>' title="Acceso al portal de tutores">
                <img src="<spring:url value="/static/imagenes/portal_tutores.png" />"  class="img-fluid rounded-circle w-75 pb-3" alt="Portal Tutores">
                <br>
                <span class="text-primary pt-3 h5-responsive">Portal Tutores</span>
				</a>                
            </div>
            <div class="col-lg-3 text-center py-3">
            	<a href='<spring:url value="/verLoginGESTOR.do"/>'  title="Acceso al portal de gestores">
                <img src="<spring:url value="/static/imagenes/portal_admin.png" />"  class="img-fluid z-depth-1 rounded-circle w-75 pb-3" alt="Portal de Gestión">
                <br>
                <span class="text-primary pt-3 h5-responsive">Portal Gestores</span>
                </a>
            </div>
        </div>

        
    </section>
    <!--Section: Content-->

	
