
<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>


	<form:form modelAttribute="oferta" action='${modo}Oferta.do' method="post">


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
					<spring:message code="label.alta.oferta"/>
					</c:if>
					<c:if test="${modo == 'actualizar'}">
					<spring:message code="label.editar.oferta"/>
					</c:if>
					</li>
				</ol>
			</nav>
		</div>
		</div>

						

							<c:if test="${modo == 'actualizar'}">

								<form:hidden path="idOferta"/>

							</c:if>
							

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="nombre"><spring:message code="label.nombre"/></label> <form:input path="nombre" class="form-control"/><form:errors path="nombre" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="descripcion"><spring:message code="label.descripcion"/></label> <form:input path="descripcion" class="form-control"/><form:errors path="descripcion" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="duracion"><spring:message code="label.duracion"/></label> <form:input path="duracion" class="form-control"/><form:errors path="duracion" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="fechaInicio"><spring:message code="label.fechaInicio"/></label> <form:input path="fechaInicio" class="form-control"/><form:errors path="fechaInicio" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="fechaFin"><spring:message code="label.fechaFin"/></label> <form:input path="fechaFin" class="form-control"/><form:errors path="fechaFin" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="inicioPlazo"><spring:message code="label.inicioPlazo"/></label> <form:input path="inicioPlazo" class="form-control"/><form:errors path="inicioPlazo" element="div" id="rojo"/>
									</div>
								</div>
					

								<div class="form-row">
									<div class="form-group col-md-12">
										<label for="finPlazo"><spring:message code="label.finPlazo"/></label> <form:input path="finPlazo" class="form-control"/><form:errors path="finPlazo" element="div" id="rojo"/>
									</div>
								</div>
					


							<a href="./listadoOfertas1.do" class="btn btn-secondary btn-sm"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</a>
							<button type="submit" class="btn btn-success btn-sm" ><em class="fas fa-save"></em> &nbsp;&nbsp;Guardar</button>



	</div>
	</div>

	</form:form>

