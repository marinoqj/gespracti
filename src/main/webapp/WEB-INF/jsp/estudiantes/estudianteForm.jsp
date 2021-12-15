
<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp"%>


<form:form modelAttribute="estudiante" action='${modo}Estudiante.do'
	method="post">


	<br>
	<br>
	<br>
	<br>
	<br>


	<div class="row">
		<div class="col-md-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active"><em
						class="fas fa-list-alt fa-lg mr-1"></em><em
						class="fas fa-users fa-lg mr-2"></em> <c:if
							test="${modo == 'insertar'}">
							<spring:message code="label.alta.estudiante" />
						</c:if> <c:if test="${modo == 'actualizar'}">
							<spring:message code="label.editar.estudiante" />
						</c:if></li>
				</ol>
			</nav>
		</div>
	</div>



	<c:if test="${modo == 'actualizar'}">

		<form:hidden path="idEstudiante" />

	</c:if>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="nombre"><spring:message code="label.nombre" /></label>
			<form:input path="nombre" class="form-control" />
			<form:errors path="nombre" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="apellido1"><spring:message code="label.apellido1" /></label>
			<form:input path="apellido1" class="form-control" />
			<form:errors path="apellido1" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="apellido2"><spring:message code="label.apellido2" /></label>
			<form:input path="apellido2" class="form-control" />
			<form:errors path="apellido2" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="sexo"><spring:message code="label.sexo" /></label>
			<form:input path="sexo" class="form-control" />
			<form:errors path="sexo" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="fechaNacimiento"><spring:message
					code="label.fechaNacimiento" /></label>
			<form:input path="fechaNacimiento" class="form-control" />
			<form:errors path="fechaNacimiento" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="dniNie"><spring:message code="label.dniNie" /></label>
			<form:input path="dniNie" class="form-control" />
			<form:errors path="dniNie" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="tipoDocumento"><spring:message
					code="label.tipoDocumento" /></label>
			<form:input path="tipoDocumento" class="form-control" />
			<form:errors path="tipoDocumento" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="email"><spring:message code="label.email" /></label>
			<form:input path="email" class="form-control" />
			<form:errors path="email" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="telefono"><spring:message code="label.telefono" /></label>
			<form:input path="telefono" class="form-control" />
			<form:errors path="telefono" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="direccion"><spring:message code="label.direccion" /></label>
			<form:input path="direccion" class="form-control" />
			<form:errors path="direccion" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="muncipio"><spring:message code="label.muncipio" /></label>
			<form:input path="muncipio" class="form-control" />
			<form:errors path="muncipio" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="provincia"><spring:message code="label.provincia" /></label>
			<form:input path="provincia" class="form-control" />
			<form:errors path="provincia" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="codPostal"><spring:message code="label.codPostal" /></label>
			<form:input path="codPostal" class="form-control" />
			<form:errors path="codPostal" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="pais"><spring:message code="label.pais" /></label>
			<form:input path="pais" class="form-control" />
			<form:errors path="pais" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="nacionalidad"><spring:message
					code="label.nacionalidad" /></label>
			<form:input path="nacionalidad" class="form-control" />
			<form:errors path="nacionalidad" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="gradoMinusvalia"><spring:message
					code="label.gradoMinusvalia" /></label>
			<form:input path="gradoMinusvalia" class="form-control" />
			<form:errors path="gradoMinusvalia" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="titulacionUpm"><spring:message
					code="label.titulacionUpm" /></label>
			<form:input path="titulacionUpm" class="form-control" />
			<form:errors path="titulacionUpm" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="fechaInicio"><spring:message
					code="label.fechaInicio" /></label>
			<form:input path="fechaInicio" class="form-control" />
			<form:errors path="fechaInicio" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-12">
			<label for="fechaFin"><spring:message code="label.fechaFin" /></label>
			<form:input path="fechaFin" class="form-control" />
			<form:errors path="fechaFin" element="div" id="rojo" />
		</div>
	</div>



	<a href="./listadoEstudiantes1.do" class="btn btn-secondary btn-sm"><em
		class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</a>
	<button type="submit" class="btn btn-success btn-sm">
		<em class="fas fa-save"></em> &nbsp;&nbsp;Guardar
	</button>


</form:form>

