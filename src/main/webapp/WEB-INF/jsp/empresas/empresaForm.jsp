
<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>


	<form:form modelAttribute="empresa" action='${modo}Empresa.do' method="post">


	<br>
	<br>
	<br>
	<br>
	<br>


	<div class="row">
		<div class="col-md-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active"><em class="fas fa-list-alt fa-lg mr-1"></em><em class="fas fa-users fa-lg mr-2"></em>
					<c:if test="${modo == 'insertar'}">
					<spring:message code="label.alta.empresa"/>
					</c:if>
					<c:if test="${modo == 'actualizar'}">
					<spring:message code="label.editar.empresa"/>
					</c:if>
					</li>
				</ol>
			</nav>
		</div>
		</div>

						

							<c:if test="${modo == 'actualizar'}">

								<form:hidden path="idEmpresa"/>

							</c:if>
							

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="tipoDocumento"><spring:message code="label.tipoDocumento"/></label> <form:input path="tipoDocumento" class="form-control"/><form:errors path="tipoDocumento" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="nifNie"><spring:message code="label.nifNie"/></label> <form:input path="nifNie" class="form-control"/><form:errors path="nifNie" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="denominacionSocial"><spring:message code="label.denominacionSocial"/></label> <form:input path="denominacionSocial" class="form-control"/><form:errors path="denominacionSocial" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="denominacionComercial"><spring:message code="label.denominacionComercial"/></label> <form:input path="denominacionComercial" class="form-control"/><form:errors path="denominacionComercial" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="tipoPersonaJuridica"><spring:message code="label.tipoPersonaJuridica"/></label> <form:input path="tipoPersonaJuridica" class="form-control"/><form:errors path="tipoPersonaJuridica" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="domicilioFiscal"><spring:message code="label.domicilioFiscal"/></label> <form:input path="domicilioFiscal" class="form-control"/><form:errors path="domicilioFiscal" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="personaContacto"><spring:message code="label.personaContacto"/></label> <form:input path="personaContacto" class="form-control"/><form:errors path="personaContacto" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="cargoPersonaContacto"><spring:message code="label.cargoPersonaContacto"/></label> <form:input path="cargoPersonaContacto" class="form-control"/><form:errors path="cargoPersonaContacto" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="email"><spring:message code="label.email"/></label> <form:input path="email" class="form-control"/><form:errors path="email" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="telefono"><spring:message code="label.telefono"/></label> <form:input path="telefono" class="form-control"/><form:errors path="telefono" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="numEmpleados"><spring:message code="label.numEmpleados"/></label> <form:input path="numEmpleados" class="form-control"/><form:errors path="numEmpleados" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="sectorActividad"><spring:message code="label.sectorActividad"/></label> <form:input path="sectorActividad" class="form-control"/><form:errors path="sectorActividad" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="urlWeb"><spring:message code="label.urlWeb"/></label> <form:input path="urlWeb" class="form-control"/><form:errors path="urlWeb" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="descripcionActividad"><spring:message code="label.descripcionActividad"/></label> <form:input path="descripcionActividad" class="form-control"/><form:errors path="descripcionActividad" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="ubicacionCentroTrabajo"><spring:message code="label.ubicacionCentroTrabajo"/></label> <form:input path="ubicacionCentroTrabajo" class="form-control"/><form:errors path="ubicacionCentroTrabajo" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="representanteLegal"><spring:message code="label.representanteLegal"/></label> <form:input path="representanteLegal" class="form-control"/><form:errors path="representanteLegal" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="cargoRepresentante"><spring:message code="label.cargoRepresentante"/></label> <form:input path="cargoRepresentante" class="form-control"/><form:errors path="cargoRepresentante" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="fechaEscritura"><spring:message code="label.fechaEscritura"/></label> <form:input path="fechaEscritura" class="form-control"/><form:errors path="fechaEscritura" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="notario"><spring:message code="label.notario"/></label> <form:input path="notario" class="form-control"/><form:errors path="notario" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="localidadNotario"><spring:message code="label.localidadNotario"/></label> <form:input path="localidadNotario" class="form-control"/><form:errors path="localidadNotario" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="direccion"><spring:message code="label.direccion"/></label> <form:input path="direccion" class="form-control"/><form:errors path="direccion" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="municipio"><spring:message code="label.municipio"/></label> <form:input path="municipio" class="form-control"/><form:errors path="municipio" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="provincia"><spring:message code="label.provincia"/></label> <form:input path="provincia" class="form-control"/><form:errors path="provincia" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="codPostal"><spring:message code="label.codPostal"/></label> <form:input path="codPostal" class="form-control"/><form:errors path="codPostal" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="pais"><spring:message code="label.pais"/></label> <form:input path="pais" class="form-control"/><form:errors path="pais" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="personaContactoContabilidad"><spring:message code="label.personaContactoContabilidad"/></label> <form:input path="personaContactoContabilidad" class="form-control"/><form:errors path="personaContactoContabilidad" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="emailContabilidad"><spring:message code="label.emailContabilidad"/></label> <form:input path="emailContabilidad" class="form-control"/><form:errors path="emailContabilidad" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="telefonoContabilidad"><spring:message code="label.telefonoContabilidad"/></label> <form:input path="telefonoContabilidad" class="form-control"/><form:errors path="telefonoContabilidad" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="mesesFactura"><spring:message code="label.mesesFactura"/></label> <form:input path="mesesFactura" class="form-control"/><form:errors path="mesesFactura" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="alumnosFactura"><spring:message code="label.alumnosFactura"/></label> <form:input path="alumnosFactura" class="form-control"/><form:errors path="alumnosFactura" element="div" id="rojo"/>
									</div>
								</div>
					


							<a href="./listadoEmpresas1.do" class="btn btn-secondary btn-sm"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</a>
							<button type="submit" class="btn btn-success btn-sm" ><em class="fas fa-save"></em> &nbsp;&nbsp;Guardar</button>



	</div>
	</div>

	</form:form>

