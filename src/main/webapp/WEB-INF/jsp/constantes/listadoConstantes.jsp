

<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>

<script>
function borrarConstante(idConstante){

	 	document.formulario.idConstante.value = idConstante;
	 	document.formulario.action="borrarConstante.do";
	 	document.formulario.submit();

}
function editarConstante(idConstante){

 	document.formulario.idConstante.value = idConstante;
 	document.formulario.action="editarConstante.do";
 	document.formulario.submit();


}

function mostarConfirmBorrarConstante(idConstante) {
    var message = '<spring:message code="confirmacion.borrar.constante"/>';

    $("#aceptarBorrar").attr("href", "javascript:borrarConstante(" + idConstante + ");");

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
	<input type="hidden" name="idConstante"/>
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
						<li class="breadcrumb-item active"><em class="fas fa-list-alt fa-lg mr-1"></em><em class="fas fa-users fa-lg mr-2"></em>Listado de constantes</li>
					</ol>
				</nav>
			</div>
		</div>



<c:if  test="${!empty constantes}">


<div class="row">
	<div class="col-md-8"></div>

	<c:if test="${hayFiltro eq false}">
		<mistags:paginacion accion="listadoConstantes" />
	</c:if>

	<c:if test="${hayFiltro eq true}">
		<mistags:paginacion accion="listadoConstantesFiltrado" />
	</c:if>
</div>


<br>

	<table class="table table-hover">
		<thead class="blue lighten-4">
			<tr class="bg-light">
	    		
					<th scope="col"><spring:message code="label.familia"/></th>
					
					<th scope="col"><spring:message code="label.atributo"/></th>
					
					<th scope="col"><spring:message code="label.literal"/></th>
					
					<th scope="col"><spring:message code="label.valor"/></th>
					
					<th scope="col"><spring:message code="label.activa"/></th>
					
					<th scope="col">&nbsp;</th>
				</tr>
			</thead>
			<tbody>
		<c:forEach items="${constantes}" var="constante">
			<tr>
			
				<td>${constante.familia}</td>
			
				<td>${constante.atributo}</td>
			
				<td>${constante.literal}</td>
			
				<td>${constante.valor}</td>
			
				<td>${constante.activa}</td>
			
				<td>
					<div>
							<label data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span style="cursor: pointer;"><em class="fas fa-cog fa-lg"></em></span>
							</label>
							<ul class="dropdown-menu dropdown-primary">
								<li class="nav-item dropdown"><a class="dropdown-item"
									href="javascript:editarConstante('${constante.idConstante}')"><spring:message code="label.editar"/></a></li>
								<li class="nav-item dropdown"><a class="dropdown-item"
									href="javascript:mostarConfirmBorrarConstante('${constante.idConstante}')"><spring:message code="label.borrar"/></a></li>
							</ul>
						</div>
				</td>
			</tr>
		</c:forEach>
			</tbody>
			</table>


		</c:if>

		<c:if  test="${empty constantes}">

			<br>
			<br>
			<br>
			<br>
			<div class="text-center">No hay constantes que mostrar...</div>
		</c:if>

		<div class="row">
			<div class="col-md-12">
				<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#nuevoFormulario"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Nuevo</button>
				<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#ventanaBuscar"><em class="fas fa-search"></em> &nbsp;&nbsp;Buscar</button>
			</div>
		</div>


<!-- Modal Nuev@ constante-->
<div class="modal fade" id="nuevoFormulario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0" style="background-color: #e9ecef; color: #6c757d">
        <span class="modal-title" id="exampleModalLabel"><em class="fas fa-plus-circle fa-lg pr-1"></em><em class="fas fa-cube fa-lg pr-2"></em>Nueva constante</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="color: #6c757d">
		<form:form modelAttribute="constante" action="insertarConstante.do" method="post">

    		


					<div class="form-group">
						<label for="familia"><spring:message code="label.familia"/></label> <form:input path="familia" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="atributo"><spring:message code="label.atributo"/></label> <form:input path="atributo" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="literal"><spring:message code="label.literal"/></label> <form:input path="literal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="valor"><spring:message code="label.valor"/></label> <form:input path="valor" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="activa"><spring:message code="label.activa"/></label> <form:input path="activa" class="form-control"/>
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
		<form:form modelAttribute="constante" action='buscarConstantes.do' method="post" id="formularioBuscar">

    		


					<div class="form-group">
						<label for="familia"><spring:message code="label.familia"/></label> <form:input path="familia" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="atributo"><spring:message code="label.atributo"/></label> <form:input path="atributo" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="literal"><spring:message code="label.literal"/></label> <form:input path="literal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="valor"><spring:message code="label.valor"/></label> <form:input path="valor" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="activa"><spring:message code="label.activa"/></label> <form:input path="activa" class="form-control"/>
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


