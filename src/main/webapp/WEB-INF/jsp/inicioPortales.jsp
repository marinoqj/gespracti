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
                <img src="<spring:url value="/static/imagenes/portal_estudiantes.png" />"  class="img-fluid rounded-circle w-75" alt="Portal Estudiantes">
                <h5 class="text-primary pt-3">Portal Estudiantes</h5>
            </div>
            <div class="col-lg-3 text-center py-3">
                <img src="<spring:url value="/static/imagenes/portal_empresas.png" />"  class="img-fluid z-depth-1 rounded-circle w-75" alt="Portal Empresas">
                <h5 class="text-primary pt-3">Portal Empresas</h5>
            </div>
            <div class="col-lg-3 text-center py-3">
                <img src="<spring:url value="/static/imagenes/portal_tutores.png" />"  class="img-fluid rounded-circle w-75" alt="Portal Tutores">
                <h5 class="text-primary pt-3">Portal Tutores</h5>
            </div>
            <div class="col-lg-3 text-center py-3">
                <img src="<spring:url value="/static/imagenes/portal_admin.png" />"  class="img-fluid z-depth-1 rounded-circle w-75" alt="Portal de Gestión">
                <h5 class="text-primary pt-3">Portal Gestores</h5>
            </div>
        </div>
        
        <div class="row pt-5">
            <div class="col-lg-3 text-center py-3">
				<a href='<spring:url value="/verLoginESTUDIANTE.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Login estudiantes</a>
            </div>
            <div class="col-lg-3 text-center py-3">
				<a href='<spring:url value="/verLoginEMPRESA.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Login empresas</a>
            </div>
            <div class="col-lg-3 text-center py-3">
				<a href='<spring:url value="/verLoginTUTOR.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Login tutores</a>
            </div>
            <div class="col-lg-3 text-center py-3">
				<a href='<spring:url value="/verLoginGESTOR.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Login gestores</a>
            </div>
        </div>        
        
    </section>
    <!--Section: Content-->

	
