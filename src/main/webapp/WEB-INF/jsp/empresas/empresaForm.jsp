
<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>


	<form:form modelAttribute="empresa" action='${modo}Empresa.do' method="post">


	<br>
	<br>
	<br>
	<br>


	<div class="row p-sup-20">
		<div class="col-md-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active">
					<c:if test="${modo == 'insertar'}">
						<em class="fas fa-plus-circle fa-lg mr-2"></em>
					</c:if>
					<c:if test="${modo == 'actualizar'}">
						<em class="fas fa-pen fa-lg mr-2"></em>
					</c:if>
						<em class="fas fa-industry fa-lg mr-2"></em>
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

    <!--/ .ACORDEON DATOS EMPRESAS -->
    <!--Accordion wrapper-->
    <div class="accordion md-accordion" id="accordionEmpresas" role="tablist" aria-multiselectable="false">

        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingDatosEmpresa">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEmpresas" href="#collapseDatosEmpresa" aria-expanded="true" aria-controls="collapseDatosEmpresa">
                   <span class="pink-text"><em class="fas fa-industry pr-2"></em>DATOS DE LA ENTIDAD<i class="fas fa-angle-down rotate-icon"></i></span>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseDatosEmpresa" class="collapse" role="tabpanel" aria-labelledby="headingDatosEmpresa" data-parent="#accordionEmpresas">
                <div class="card-body">
					<!-- Grid Row -->
				  	<div class="row">
				      	<!--Grid column-->
						<div class="col">
							<div class="form-row">
								<div class="form-group col-md-4 pr-3">
									<label for="tipoDocumento"><spring:message code="label.tipoDocumento"/><span style="color: red">*</span></label> 
<%-- 									<form:input path="tipoDocumento" class="form-control form-control-sm"/> --%>
									<select class="form-control form-control-sm" id="tipoDocumento" name="tipoDocumento">
						                <option value="-1">---</option>
				                        <option value="1">NIF/NIE</option>
				                        <option value="3">INTERNACIONAL</option>
				                        <option value="4">PÚBLICA</option>
				                        <option value="6">FUNDACIÓN</option>
					                </select>
									<form:errors path="tipoDocumento" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="nifNie"><spring:message code="label.nifNie"/><span style="color: red">*</span></label> <form:input path="nifNie" class="form-control form-control-sm"/><form:errors path="nifNie" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="denominacionSocial"><spring:message code="label.denominacionSocial"/><span style="color: red">*</span></label> <form:input path="denominacionSocial" class="form-control form-control-sm"/><form:errors path="denominacionSocial" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-4 pr-3">
									<label for="denominacionComercial"><spring:message code="label.denominacionComercial"/></label> <form:input path="denominacionComercial" class="form-control form-control-sm"/><form:errors path="denominacionComercial" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="tipoPersonaJuridica"><spring:message code="label.tipoPersonaJuridica"/><span style="color: red">*</span></label> 
<%-- 									<form:input path="tipoPersonaJuridica" class="form-control form-control-sm"/> --%>
									<select class="form-control form-control-sm" id="tipoPersonaJuridica" name="tipoPersonaJuridica">
						                  <option value="-1">---</option>
					                      <option value="21">-/ Autónomo</option>
					                      <option value="1">A / Sociedades anónimas</option>
					                      <option value="2">B / Sociedades de responsabilidad limitada</option>
					                      <option value="3">C / Sociedades colectivas</option>
					                      <option value="4">D / Sociedades comanditarias</option>
					                      <option value="22">Departamento interno UPM</option>
					                      <option value="5">E / Comunidades de bienes y herencias yacentes</option>
					                      <option value="23">Empresa internacional</option>
					                      <option value="6">F / Sociedades cooperativas</option>
					                      <option value="7">G / Asociaciones y Fundaciones</option>
					                      <option value="8">H / Comunidades de propietarios en régimen de propiedad horizontal</option>
					                      <option value="9">J / Sociedades civiles, con o sin personalidad jurídica</option>
					                      <option value="16">N / Personas jurídicas y entidades sin personalidad jurídica que carezcan de la nacionalidad española</option>
					                      <option value="10">P / Corporaciones Locales</option>
					                      <option value="11">Q / Organismos públicos</option>
					                      <option value="12">R / Congregaciones e instituciones religiosas</option>
					                      <option value="13">S / Órganos de la Administración del Estado y de las Comunidades Autónomas</option>
					                      <option value="14">U / Uniones Temporales de Empresas</option>
					                      <option value="15">V / Otros tipos no definidos en el resto de claves</option>
					                      <option value="17">W / Establecimientos permanentes de entidad no residente en España</option>						                  
						              </select>
									<form:errors path="tipoPersonaJuridica" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="domicilioFiscal"><spring:message code="label.domicilioFiscal"/></label> <form:input path="domicilioFiscal" class="form-control form-control-sm"/><form:errors path="domicilioFiscal" element="div" id="rojo"/>
								</div>

							</div>


							<div class="form-row">
								<div class="form-group col-md-6 pr-3">
									<label for="personaContacto"><spring:message code="label.personaContacto"/><span style="color: red">*</span></label> <form:input path="personaContacto" class="form-control form-control-sm"/><form:errors path="personaContacto" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-6 pr-3">
									<label for="cargoPersonaContacto"><spring:message code="label.cargoPersonaContacto"/></label> <form:input path="cargoPersonaContacto" class="form-control form-control-sm"/><form:errors path="cargoPersonaContacto" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-4 pr-3">
									<label for="email"><spring:message code="label.email"/><span style="color: red">*</span></label> <form:input path="email" class="form-control form-control-sm"/><form:errors path="email" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="telefono"><spring:message code="label.telefono"/><span style="color: red">*</span></label> <form:input path="telefono" class="form-control form-control-sm"/><form:errors path="telefono" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="numEmpleados"><spring:message code="label.numEmpleados"/></label> <form:input path="numEmpleados" class="form-control form-control-sm"/><form:errors path="numEmpleados" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6 pr-3">
									<label for="sectorActividad"><spring:message code="label.sectorActividad"/></label> 
<%-- 									<form:input path="sectorActividad" class="form-control form-control-sm"/> --%>
									<select class="form-control form-control-sm" id="sectorActividad" name="sectorActividad">
					                    <option value="-1">---</option>
				                        <option value="15">Actividad Física y Deporte</option>
				                        <option value="3">Administración pública</option>
				                        <option value="8">Aeronautico</option>
				                        <option value="6">Calidad, producción e I+D</option>
				                        <option value="7">Centro de Investigación y/o Departamento UPM</option>
				                        <option value="13">Consultora de Ingeniería general</option>
				                        <option value="16">Diseño de Moda</option>
				                        <option value="9">Energético y Minero</option>
				                        <option value="5">Estudio de Arquitectura</option>
				                        <option value="1">Informática y Telecomunicaciones</option>
				                        <option value="18">Naval</option>
				                        <option value="10">Obras públicas y/o construcción</option>
				                        <option value="2">Otros</option>
				                        <option value="11">Sanidad, Biotecnología y Biomédica</option>
				                        <option value="4">Sector Agronómico y/o Agroalimentario</option>
				                        <option value="12">Sector Forestal y Medioambiental</option>
				                        <option value="14">Sector Industrial en general, Eléctrico, Automoción, Robótica</option>
				                        <option value="19">Sector Químico</option>
				                        <option value="17">Transporte</option>
					                </select>									
									<form:errors path="sectorActividad" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-6 pr-3">
									<label for="urlWeb"><spring:message code="label.urlWeb"/></label> <form:input path="urlWeb" class="form-control form-control-sm"/><form:errors path="urlWeb" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-12 pr-3">
									<label for="descripcionActividad"><spring:message code="label.descripcionActividad"/><span style="color: red">*</span></label>
									<form:textarea path="descripcionActividad" class="form-control form-control-sm" rows="4" /><form:errors path="descripcionActividad" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-12 pr-3">
									<label for="ubicacionCentroTrabajo"><spring:message code="label.ubicacionCentroTrabajo"/></label> <form:input path="ubicacionCentroTrabajo" class="form-control form-control-sm"/><form:errors path="ubicacionCentroTrabajo" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-8 pr-3">
									<label for="representanteLegal"><spring:message code="label.representanteLegal"/></label> <form:input path="representanteLegal" class="form-control form-control-sm"/><form:errors path="representanteLegal" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="cargoRepresentante"><spring:message code="label.cargoRepresentante"/></label> <form:input path="cargoRepresentante" class="form-control form-control-sm"/><form:errors path="cargoRepresentante" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-4 pr-3">
									<label for="fechaEscritura"><spring:message code="label.fechaEscritura"/><span style="color: red">**</span></label> 
									<form:input path="fechaEscritura" class="form-control form-control-sm datepicker" data-date-format="dd-mm-yyyy" placeholder="dd-mm-aaaa" />
									<form:errors path="fechaEscritura" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="notario"><spring:message code="label.notario"/><span style="color: red">**</span></label> <form:input path="notario" class="form-control form-control-sm"/><form:errors path="notario" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="localidadNotario"><spring:message code="label.localidadNotario"/><span style="color: red">**</span></label> <form:input path="localidadNotario" class="form-control form-control-sm"/><form:errors path="localidadNotario" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-12 pr-3">
									<label for="direccion"><spring:message code="label.direccion"/><span style="color: red">*</span></label> <form:input path="direccion" class="form-control form-control-sm"/><form:errors path="direccion" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6 pr-3">
									<label for="municipio"><spring:message code="label.municipio"/><span style="color: red">*</span></label> <form:input path="municipio" class="form-control form-control-sm"/><form:errors path="municipio" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-6 pr-3">
									<label for="provincia"><spring:message code="label.provincia"/><span style="color: red">*</span></label> <form:input path="provincia" class="form-control form-control-sm"/><form:errors path="provincia" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6 pr-3">
									<label for="codPostal"><spring:message code="label.codPostal"/><span style="color: red">*</span></label> <form:input path="codPostal" class="form-control form-control-sm"/><form:errors path="codPostal" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-6 pr-3">
									<label for="pais"><spring:message code="label.pais"/><span style="color: red">*</span></label> <form:input path="pais" class="form-control form-control-sm"/><form:errors path="pais" element="div" id="rojo"/>
								</div>
							</div>

						</div>
				      	<!--Grid column-->
				    </div>
					<!-- /.Grid Row -->
					
                </div>
            </div>

        </div>
        <!-- Accordion card -->
        
        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingDatosFacturacion">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEmpresas" href="#collapseDatosFacturacion" aria-expanded="false" aria-controls="collapseDatosFacturacion">
                  <span class="pink-text"><em class="fas fa-money-check-alt pr-2"></em>DATOS PARA FACTURAR LOS GASTOS DE GESTIÓN<i class="fas fa-angle-down rotate-icon"></i></span>	
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseDatosFacturacion" class="collapse" role="tabpanel" aria-labelledby="headingDatosFacturacion" data-parent="#accordionEmpresas">
                <div class="card-body">
					<!-- Grid Row -->
				  	<div class="row">
				      <!--Grid column-->

						<div class="col">
							<div class="form-row">
								<div class="form-group col-md-4 pr-3">
									<label for="personaContactoContabilidad"><spring:message code="label.personaContactoContabilidad"/><span style="color: red">*</span></label> <form:input path="personaContactoContabilidad" class="form-control form-control-sm"/><form:errors path="personaContactoContabilidad" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="emailContabilidad"><spring:message code="label.emailContabilidad"/><span style="color: red">*</span></label> <form:input path="emailContabilidad" class="form-control form-control-sm"/><form:errors path="emailContabilidad" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-4 pr-3">
									<label for="telefonoContabilidad"><spring:message code="label.telefonoContabilidad"/><span style="color: red">*</span></label> <form:input path="telefonoContabilidad" class="form-control form-control-sm"/><form:errors path="telefonoContabilidad" element="div" id="rojo"/>
								</div>
							</div>


							<div class="form-row">
								<div class="form-group col-md-6 pr-3">
									<label for="mesesFactura"><spring:message code="label.mesesFactura"/><span style="color: red">*</span></label> <form:input path="mesesFactura" class="form-control form-control-sm"/><form:errors path="mesesFactura" element="div" id="rojo"/>
								</div>
								<div class="form-group col-md-6 pr-3">
									<label for="alumnosFactura"><spring:message code="label.alumnosFactura"/><span style="color: red">*</span></label> <form:input path="alumnosFactura" class="form-control form-control-sm"/><form:errors path="alumnosFactura" element="div" id="rojo"/>
								</div>
							</div>

						</div>
				      <!--Grid column-->
				    </div>
					<!-- /.Grid Row -->
                </div>
            </div>

        </div>
        <!-- Accordion card -->
        
    </div>
    <!-- Accordion wrapper -->
    <!--/ .ACORDEON DATOS EMPRESAS -->

	<br><br>
	<a href="./listadoEmpresas1.do" class="btn btn-rounded btn-secondary btn-sm"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</a>
	<button type="submit" class="btn btn-rounded btn-success btn-sm" ><em class="fas fa-save"></em> &nbsp;&nbsp;Guardar</button>


	</form:form>
	
	
<script type="text/javascript">
    $('.datepicker').datepicker({
        weekStart: 1,
        daysOfWeekHighlighted: "6,0",
        autoclose: true,
        todayHighlight: true,
        language: 'es',
    });
    // $('.datepicker').datepicker("setDate", new Date());
    
</script>    
	