

<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>

<script>
function borrarEstudiante(idEstudiante){

	 	document.formulario.idEstudiante.value = idEstudiante;
	 	document.formulario.action="borrarEstudiante.do";
	 	document.formulario.submit();

}
function editarEstudiante(idEstudiante){

 	document.formulario.idEstudiante.value = idEstudiante;
 	document.formulario.action="editarEstudiante.do";
 	document.formulario.submit();


}

function mostarConfirmBorrarEstudiante(idEstudiante) {
    var message = '<spring:message code="confirmacion.borrar.estudiante"/>';

    $("#aceptarBorrar").attr("href", "javascript:borrarEstudiante(" + idEstudiante + ");");

    mostrarConfirm(message);
}


function mostrarConfirm(message) {
    $('#alertModal').find('.modal-body p').html(message);
    $('#alertModal').modal('show');
}

$(document).ready(function(){
    $('#ventanaBuscar').on('hidden.bs.modal', function () {
        $('form[id="formularioBuscar"]').trigger('reset');
    });
});


</script>


<!-- Warning Modal -->
<div id="alertModal" class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
         <p></p>
      </div>
      <div class="modal-footer">
         <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</button>
         <a class="btn btn-primary btn-sm" role="button" href="#" id="aceptarBorrar"><em class="fas fa-check-circle"></em>&nbsp;&nbsp;<spring:message code="button.aceptar" /></a>
      </div>
    </div>
  </div>
</div>

<!-- ./ Warning Modal -->

<form name="formulario" method="post">
	<input type="hidden" name="idEstudiante"/>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

		<br>
		<br>
		<br>
		<br>
		<br>


		<div class="row">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active"><em class="fas fa-list-alt fa-lg mr-1"></em><em class="fas fa-users fa-lg mr-2"></em>Listado de estudiantes</li>
					</ol>
				</nav>
			</div>
		</div>



<c:if  test="${!empty estudiantes}">


<div class="row">
	<div class="col-md-8"></div>

	<c:if test="${hayFiltro eq false}">
		<mistags:paginacion accion="listadoEstudiantes" />
	</c:if>

	<c:if test="${hayFiltro eq true}">
		<mistags:paginacion accion="listadoEstudiantesFiltrado" />
	</c:if>
</div>


<br>

	<table class="table table-hover">
		<thead class="blue lighten-4">
			<tr class="bg-light">
	    		
					<th scope="col"><spring:message code="label.nombre"/></th>
					
					<th scope="col"><spring:message code="label.apellido1"/></th>
					
					<th scope="col"><spring:message code="label.apellido2"/></th>
										
					<th scope="col"><spring:message code="label.dniNie"/></th>
					
					<th scope="col"><spring:message code="label.email"/></th>
					
					<th scope="col"><spring:message code="label.telefono"/></th>
										
					<th scope="col">&nbsp;</th>
				</tr>
			</thead>
			<tbody>
		<c:forEach items="${estudiantes}" var="estudiante">
			<tr>
			
				<td>${estudiante.nombre}</td>
			
				<td>${estudiante.apellido1}</td>
			
				<td>${estudiante.apellido2}</td>
						
				<td>${estudiante.dniNie}</td>
			
				<td>${estudiante.email}</td>
			
				<td>${estudiante.telefono}</td>
						
				<td>
					<div>
							<label data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span style="cursor: pointer;"><em class="fas fa-cog fa-lg"></em></span>
							</label>
							<ul class="dropdown-menu dropdown-primary">
								<li class="nav-item dropdown"><a class="dropdown-item"
									href="javascript:editarEstudiante('${estudiante.idEstudiante}')"><spring:message code="label.editar"/></a></li>
								<li class="nav-item dropdown"><a class="dropdown-item"
									href="javascript:mostarConfirmBorrarEstudiante('${estudiante.idEstudiante}')"><spring:message code="label.borrar"/></a></li>
							</ul>
						</div>
				</td>
			</tr>
		</c:forEach>
			</tbody>
			</table>


		</c:if>

		<c:if  test="${empty estudiantes}">

			<br>
			<br>
			<br>
			<br>
			<div class="text-center">No hay estudiantes que mostrar...</div>
		</c:if>

		<div class="row">
			<div class="col-md-12">
				<a href='<spring:url value="/sec/altaEstudiante.do"/>' class="btn btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Nuevo</a>
				<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ventanaBuscar"><em class="fas fa-search"></em> &nbsp;&nbsp;Buscar</button>
			</div>
		</div>


<!-- Modal Nuev@ estudiante-->
<div class="modal fade" id="nuevoFormulario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0" style="background-color: #e9ecef; color: #6c757d">
        <span class="modal-title" id="exampleModalLabel"><em class="fas fa-plus-circle fa-lg pr-1"></em><em class="fas fa-cube fa-lg pr-2"></em>Nueva estudiante</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="color: #6c757d">
		<form:form modelAttribute="estudiante" action="insertarEstudiante.do" method="post">

    		


					<div class="form-group">
						<label for="nombre"><spring:message code="label.nombre"/></label> <form:input path="nombre" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="apellido1"><spring:message code="label.apellido1"/></label> <form:input path="apellido1" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="apellido2"><spring:message code="label.apellido2"/></label> <form:input path="apellido2" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="sexo"><spring:message code="label.sexo"/></label> <form:input path="sexo" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaNacimiento"><spring:message code="label.fechaNacimiento"/></label> <form:input path="fechaNacimiento" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="dniNie"><spring:message code="label.dniNie"/></label> <form:input path="dniNie" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="tipoDocumento"><spring:message code="label.tipoDocumento"/></label> <form:input path="tipoDocumento" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="email"><spring:message code="label.email"/></label> <form:input path="email" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="telefono"><spring:message code="label.telefono"/></label> <form:input path="telefono" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="direccion"><spring:message code="label.direccion"/></label> <form:input path="direccion" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="muncipio"><spring:message code="label.muncipio"/></label> <form:input path="muncipio" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="provincia"><spring:message code="label.provincia"/></label> <form:input path="provincia" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="codPostal"><spring:message code="label.codPostal"/></label> <form:input path="codPostal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="pais"><spring:message code="label.pais"/></label> <form:input path="pais" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="nacionalidad"><spring:message code="label.nacionalidad"/></label> <form:input path="nacionalidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="gradoMinusvalia"><spring:message code="label.gradoMinusvalia"/></label> <form:input path="gradoMinusvalia" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="titulacionUpm"><spring:message code="label.titulacionUpm"/></label> <form:input path="titulacionUpm" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaInicio"><spring:message code="label.fechaInicio"/></label> <form:input path="fechaInicio" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaFin"><spring:message code="label.fechaFin"/></label> <form:input path="fechaFin" class="form-control"/>
					</div>

					

			<br>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</button>
        <button type="submit" class="btn btn-success btn-sm"><em class="fas fa-save"></em> &nbsp;&nbsp;Guardar</button>
      </div>

      </form:form>
    </div>
  </div>
</div>
</div>


<!-- Modal Busqueda -->
<div class="modal fade" id="ventanaBuscar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0" style="background-color: #e9ecef; color: #6c757d">
        <span class="modal-title" id="exampleModalLabel"><em class="fas fas fa-search fa-lg pr-1"></em><em class="fas fa-cube fa-lg pr-2"></em>Buscar Constante</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="color: #6c757d">
		<form:form modelAttribute="estudiante" action='buscarEstudiantes.do' method="post" id="formularioBuscar">

    		


					<div class="form-group">
						<label for="nombre"><spring:message code="label.nombre"/></label> <form:input path="nombre" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="apellido1"><spring:message code="label.apellido1"/></label> <form:input path="apellido1" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="apellido2"><spring:message code="label.apellido2"/></label> <form:input path="apellido2" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="sexo"><spring:message code="label.sexo"/></label> <form:input path="sexo" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaNacimiento"><spring:message code="label.fechaNacimiento"/></label> <form:input path="fechaNacimiento" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="dniNie"><spring:message code="label.dniNie"/></label> <form:input path="dniNie" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="tipoDocumento"><spring:message code="label.tipoDocumento"/></label> <form:input path="tipoDocumento" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="email"><spring:message code="label.email"/></label> <form:input path="email" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="telefono"><spring:message code="label.telefono"/></label> <form:input path="telefono" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="direccion"><spring:message code="label.direccion"/></label> <form:input path="direccion" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="muncipio"><spring:message code="label.muncipio"/></label> <form:input path="muncipio" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="provincia"><spring:message code="label.provincia"/></label> <form:input path="provincia" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="codPostal"><spring:message code="label.codPostal"/></label> <form:input path="codPostal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="pais"><spring:message code="label.pais"/></label> <form:input path="pais" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="nacionalidad"><spring:message code="label.nacionalidad"/></label> <form:input path="nacionalidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="gradoMinusvalia"><spring:message code="label.gradoMinusvalia"/></label> <form:input path="gradoMinusvalia" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="titulacionUpm"><spring:message code="label.titulacionUpm"/></label> <form:input path="titulacionUpm" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaInicio"><spring:message code="label.fechaInicio"/></label> <form:input path="fechaInicio" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaFin"><spring:message code="label.fechaFin"/></label> <form:input path="fechaFin" class="form-control"/>
					</div>

					


			<br>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</button>
        <button type="submit" class="btn btn-success btn-sm"><em class="fas fa-save"></em> &nbsp;&nbsp;Buscar</button>
      </div>

      </form:form>
    </div>
  </div>
</div>
</div>


