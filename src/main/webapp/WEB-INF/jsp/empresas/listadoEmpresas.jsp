

<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>

<script>
function borrarEmpresa(idEmpresa){

	 	document.formulario.idEmpresa.value = idEmpresa;
	 	document.formulario.action="borrarEmpresa.do";
	 	document.formulario.submit();

}
function editarEmpresa(idEmpresa){

 	document.formulario.idEmpresa.value = idEmpresa;
 	document.formulario.action="editarEmpresa.do";
 	document.formulario.submit();


}

function mostarConfirmBorrarEmpresa(idEmpresa) {
    var message = '<spring:message code="confirmacion.borrar.empresa"/>';

    $("#aceptarBorrar").attr("href", "javascript:borrarEmpresa(" + idEmpresa + ");");

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
	<input type="hidden" name="idEmpresa"/>
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
						<li class="breadcrumb-item active"><em class="fas fa-list-alt fa-lg mr-1"></em><em class="fas fa-industry fa-lg mr-2"></em>Listado de empresas</li>
					</ol>
				</nav>
			</div>
		</div>



<c:if  test="${!empty empresas}">


<div class="row">
	<div class="col-md-8"></div>

	<c:if test="${hayFiltro eq false}">
		<mistags:paginacion accion="listadoEmpresas" />
	</c:if>

	<c:if test="${hayFiltro eq true}">
		<mistags:paginacion accion="listadoEmpresasFiltrado" />
	</c:if>
</div>


<br>

	<table class="table table-hover">
		<thead class="blue lighten-4">
			<tr class="bg-light">
	    		
					<th scope="col"><spring:message code="label.nifNie"/></th>
					
					<th scope="col"><spring:message code="label.denominacionSocial"/></th>
										
					<th scope="col"><spring:message code="label.domicilioFiscal"/></th>
					
					<th scope="col"><spring:message code="label.personaContacto"/></th>
									
					<th scope="col"><spring:message code="label.email"/></th>
					
					<th scope="col"><spring:message code="label.telefono"/></th>
					
					<th scope="col">&nbsp;</th>
				</tr>
			</thead>
			<tbody>
		<c:forEach items="${empresas}" var="empresa">
			<tr>
			
			
				<td>${empresa.nifNie}</td>
			
				<td>${empresa.denominacionSocial}</td>
						
				<td>${empresa.domicilioFiscal}</td>
			
				<td>${empresa.personaContacto}</td>
			
				<td>${empresa.email}</td>
			
				<td>${empresa.telefono}</td>
						
				<td>
					<div>
							<label data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span style="cursor: pointer;"><em class="fas fa-cog fa-lg"></em></span>
							</label>
							<ul class="dropdown-menu dropdown-primary">
								<li class="nav-item dropdown"><a class="dropdown-item"
									href="javascript:editarEmpresa('${empresa.idEmpresa}')"><spring:message code="label.editar"/></a></li>
								<li class="nav-item dropdown"><a class="dropdown-item"
									href="javascript:mostarConfirmBorrarEmpresa('${empresa.idEmpresa}')"><spring:message code="label.borrar"/></a></li>
							</ul>
						</div>
				</td>
			</tr>
		</c:forEach>
			</tbody>
			</table>


		</c:if>

		<c:if  test="${empty empresas}">

			<br>
			<br>
			<div class="text-center text-danger p-5">No hay empresas que mostrar...</div>
		</c:if>

		<div class="row">
			<div class="col-md-12">
				<a href='<spring:url value="/sec/altaEmpresa.do"/>' class="btn btn-rounded btn-primary btn-sm"><em class="fas fa-plus-circle"></em>&nbsp;&nbsp;Nueva</a>
				<button type="button" class="btn btn-rounded btn-success btn-sm" data-toggle="modal" data-target="#ventanaBuscar"><em class="fas fa-search"></em> &nbsp;&nbsp;Buscar</button>
			</div>
		</div>


<!-- Modal Nuev@ empresa-->
<div class="modal fade" id="nuevoFormulario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0" style="background-color: #e9ecef; color: #6c757d">
        <span class="modal-title" id="exampleModalLabel"><em class="fas fa-plus-circle fa-lg pr-1"></em><em class="fas fa-cube fa-lg pr-2"></em>Nueva empresa</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="color: #6c757d">
		<form:form modelAttribute="empresa" action="insertarEmpresa.do" method="post">

    		


					<div class="form-group">
						<label for="tipoDocumento"><spring:message code="label.tipoDocumento"/></label> <form:input path="tipoDocumento" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="nifNie"><spring:message code="label.nifNie"/></label> <form:input path="nifNie" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="denominacionSocial"><spring:message code="label.denominacionSocial"/></label> <form:input path="denominacionSocial" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="denominacionComercial"><spring:message code="label.denominacionComercial"/></label> <form:input path="denominacionComercial" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="tipoPersonaJuridica"><spring:message code="label.tipoPersonaJuridica"/></label> <form:input path="tipoPersonaJuridica" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="domicilioFiscal"><spring:message code="label.domicilioFiscal"/></label> <form:input path="domicilioFiscal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="personaContacto"><spring:message code="label.personaContacto"/></label> <form:input path="personaContacto" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="cargoPersonaContacto"><spring:message code="label.cargoPersonaContacto"/></label> <form:input path="cargoPersonaContacto" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="email"><spring:message code="label.email"/></label> <form:input path="email" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="telefono"><spring:message code="label.telefono"/></label> <form:input path="telefono" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="numEmpleados"><spring:message code="label.numEmpleados"/></label> <form:input path="numEmpleados" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="sectorActividad"><spring:message code="label.sectorActividad"/></label> <form:input path="sectorActividad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="urlWeb"><spring:message code="label.urlWeb"/></label> <form:input path="urlWeb" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="descripcionActividad"><spring:message code="label.descripcionActividad"/></label> <form:input path="descripcionActividad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="ubicacionCentroTrabajo"><spring:message code="label.ubicacionCentroTrabajo"/></label> <form:input path="ubicacionCentroTrabajo" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="representanteLegal"><spring:message code="label.representanteLegal"/></label> <form:input path="representanteLegal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="cargoRepresentante"><spring:message code="label.cargoRepresentante"/></label> <form:input path="cargoRepresentante" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaEscritura"><spring:message code="label.fechaEscritura"/></label> <form:input path="fechaEscritura" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="notario"><spring:message code="label.notario"/></label> <form:input path="notario" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="localidadNotario"><spring:message code="label.localidadNotario"/></label> <form:input path="localidadNotario" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="direccion"><spring:message code="label.direccion"/></label> <form:input path="direccion" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="municipio"><spring:message code="label.municipio"/></label> <form:input path="municipio" class="form-control"/>
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
						<label for="personaContactoContabilidad"><spring:message code="label.personaContactoContabilidad"/></label> <form:input path="personaContactoContabilidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="emailContabilidad"><spring:message code="label.emailContabilidad"/></label> <form:input path="emailContabilidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="telefonoContabilidad"><spring:message code="label.telefonoContabilidad"/></label> <form:input path="telefonoContabilidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="mesesFactura"><spring:message code="label.mesesFactura"/></label> <form:input path="mesesFactura" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="alumnosFactura"><spring:message code="label.alumnosFactura"/></label> <form:input path="alumnosFactura" class="form-control"/>
					</div>

					

			<br>

      <div class="modal-footer">
        <button type="button" class="btn btn-rounded btn-secondary btn-sm" data-dismiss="modal"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</button>
        <button type="submit" class="btn btn-rounded btn-success btn-sm"><em class="fas fa-save"></em> &nbsp;&nbsp;Guardar</button>
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
		<form:form modelAttribute="empresa" action='buscarEmpresas.do' method="post" id="formularioBuscar">

    		


					<div class="form-group">
						<label for="tipoDocumento"><spring:message code="label.tipoDocumento"/></label> <form:input path="tipoDocumento" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="nifNie"><spring:message code="label.nifNie"/></label> <form:input path="nifNie" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="denominacionSocial"><spring:message code="label.denominacionSocial"/></label> <form:input path="denominacionSocial" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="denominacionComercial"><spring:message code="label.denominacionComercial"/></label> <form:input path="denominacionComercial" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="tipoPersonaJuridica"><spring:message code="label.tipoPersonaJuridica"/></label> <form:input path="tipoPersonaJuridica" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="domicilioFiscal"><spring:message code="label.domicilioFiscal"/></label> <form:input path="domicilioFiscal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="personaContacto"><spring:message code="label.personaContacto"/></label> <form:input path="personaContacto" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="cargoPersonaContacto"><spring:message code="label.cargoPersonaContacto"/></label> <form:input path="cargoPersonaContacto" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="email"><spring:message code="label.email"/></label> <form:input path="email" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="telefono"><spring:message code="label.telefono"/></label> <form:input path="telefono" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="numEmpleados"><spring:message code="label.numEmpleados"/></label> <form:input path="numEmpleados" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="sectorActividad"><spring:message code="label.sectorActividad"/></label> <form:input path="sectorActividad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="urlWeb"><spring:message code="label.urlWeb"/></label> <form:input path="urlWeb" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="descripcionActividad"><spring:message code="label.descripcionActividad"/></label> <form:input path="descripcionActividad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="ubicacionCentroTrabajo"><spring:message code="label.ubicacionCentroTrabajo"/></label> <form:input path="ubicacionCentroTrabajo" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="representanteLegal"><spring:message code="label.representanteLegal"/></label> <form:input path="representanteLegal" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="cargoRepresentante"><spring:message code="label.cargoRepresentante"/></label> <form:input path="cargoRepresentante" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="fechaEscritura"><spring:message code="label.fechaEscritura"/></label> <form:input path="fechaEscritura" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="notario"><spring:message code="label.notario"/></label> <form:input path="notario" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="localidadNotario"><spring:message code="label.localidadNotario"/></label> <form:input path="localidadNotario" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="direccion"><spring:message code="label.direccion"/></label> <form:input path="direccion" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="municipio"><spring:message code="label.municipio"/></label> <form:input path="municipio" class="form-control"/>
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
						<label for="personaContactoContabilidad"><spring:message code="label.personaContactoContabilidad"/></label> <form:input path="personaContactoContabilidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="emailContabilidad"><spring:message code="label.emailContabilidad"/></label> <form:input path="emailContabilidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="telefonoContabilidad"><spring:message code="label.telefonoContabilidad"/></label> <form:input path="telefonoContabilidad" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="mesesFactura"><spring:message code="label.mesesFactura"/></label> <form:input path="mesesFactura" class="form-control"/>
					</div>

					


					<div class="form-group">
						<label for="alumnosFactura"><spring:message code="label.alumnosFactura"/></label> <form:input path="alumnosFactura" class="form-control"/>
					</div>

					


			<br>

      <div class="modal-footer">
        <button type="button" class="btn btn-rounded btn-secondary btn-sm" data-dismiss="modal"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</button>
        <button type="submit" class="btn btn-rounded btn-success btn-sm"><em class="fas fa-save"></em> &nbsp;&nbsp;Buscar</button>
      </div>

      </form:form>
    </div>
  </div>
</div>
</div>

