

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
         <button type="button" class="btn btn-rounded btn-secondary btn-sm" data-dismiss="modal"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</button>
         <a class="btn btn-rounded btn-primary btn-sm" role="button" href="#" id="aceptarBorrar"><em class="fas fa-check-circle"></em>&nbsp;&nbsp;<spring:message code="button.aceptar" /></a>
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


		<div class="row p-sup-20">
			<div class="col-md-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item active"><em class="fas fa-list-alt fa-lg mr-1"></em><em class="fas fa-user-graduate fa-lg mr-2"></em>Listado de estudiantes</li>
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
			<br><br>
			<div class="text-center text-danger p-5">No hay estudiantes que mostrar...</div>


		</c:if>

		<div class="row">
			<div class="col-md-12">
			<sec:authorize access="hasRole('ADMIN')">
				<a href='<spring:url value="/sec/gestor/altaEstudiante.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Nuevo</a>
			</sec:authorize>
			<sec:authorize access="hasRole('ESTUDIANTE')">
				<a href='<spring:url value="/public/altaEstudiante.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Nuevo</a>
			</sec:authorize>

			</div>
		</div>




