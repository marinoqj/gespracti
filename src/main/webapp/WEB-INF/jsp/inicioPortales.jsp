<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp"%>

<br>
<br>

<div class="container pt-5">


    <!--Section: Content-->
    <section class="dark-grey-text p-sup-20">

        <div class="row row-cols-lg-2 row-cols-1 px-md-5">
            <div class="col mb-4">
                <div class="view">
                    <img id="img-practicas" src='<spring:url value="/static/imagenes/practicas.png" />' class="img-fluid mx-auto d-block" alt="Gestion de Practicas">
                </div>
            </div>
            <div class="col pt-md-3">
                <h3 class="font-weight-bold">Gestión de Prácticas de la UPM - Página de entrada</h3>
                <p>Bienvenidos a la aplicación de Gestión de Prácticas Curriculares y Extracurriculares de la Universidad Politécnica de Madrid.</p>
            </div>
        </div>

		<div class="row">
			<div class="col-md-12">
				<a href='<spring:url value="/verLoginESTUDIANTE.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Login estudiantes</a>				
				<a href='<spring:url value="/verLoginEMPRESA.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Login empresas</a>
			</div>
		</div>

    </section>
    <!--Section: Content-->


</div>
<br>
