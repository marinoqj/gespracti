
<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp"%>


<form:form modelAttribute="estudiante" action='${modo}Estudiante.do' method="post">


	<br>
	<br>
	<br>
	<br>
	
	<div class="row  p-sup-20">
		<div class="col-md-12">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item active">
						<c:if test="${modo == 'insertar'}">
							<em class="fas fa-plus-circle fa-lg mr-1"></em>
						</c:if> 
						<c:if test="${modo == 'actualizar'}">
							<em class="fas fa-pen fa-lg mr-1"></em>
						</c:if>
						<em class="fas fa-user-graduate  fa-lg mr-2"></em>
						<c:if test="${modo == 'insertar'}">
							<spring:message code="label.alta.estudiante" />
						</c:if> 
						<c:if test="${modo == 'actualizar'}">
							<spring:message code="label.editar.estudiante" />
						</c:if>
					</li>
				</ol>
			</nav>
		</div>
	</div>



	<c:if test="${modo == 'actualizar'}">

		<form:hidden path="idEstudiante" />

	</c:if>


	<div class="form-row">
		<div class="form-group col-md-4 pr-md-3">
			<label for="nombre"><spring:message code="label.nombre" /><span style="color: red">*</span></label>
			<form:input path="nombre" class="form-control form-control-sm" />
			<form:errors path="nombre" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="apellido1"><spring:message code="label.apellido1" /><span style="color: red">*</span></label>
			<form:input path="apellido1" class="form-control form-control-sm" />
			<form:errors path="apellido1" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="apellido2"><spring:message code="label.apellido2" /><span style="color: red">*</span></label>
			<form:input path="apellido2" class="form-control form-control-sm" />
			<form:errors path="apellido2" element="div" id="rojo" />
		</div>		
	</div>


	<div class="form-row">
		<div class="form-group col-md-6 pr-md-3">
			<label for="sexo"><spring:message code="label.sexo" /></label>
<%-- 			<form:input path="sexo" class="form-control form-control-sm" />--%>
			<select class="form-control form-control-sm">
				<option selected>---</option>
				<option value="1">Hombre</option>
				<option value="2">Mujer</option>
			</select>
			<form:errors path="sexo" element="div" id="rojo" />			
		</div>
		<div class="form-group col-md-6 pr-md-3">
				<label for="fechaNacimiento"><spring:message code="label.fechaNacimiento" /><span style="color: red">*</span></label> 
				<form:input path="fechaNacimiento" class="form-control form-control-sm datepicker" data-date-format="dd-mm-yyyy" placeholder="dd-mm-aaaa" />
				<form:errors path="fechaNacimiento" element="div" id="rojo" />
		</div>		
	</div>


	<div class="form-row">
		<div class="form-group col-md-6 pr-md-3">
			<label for="tipoDocumento"><spring:message code="label.tipoDocumento" /><span style="color: red">*</span></label>
<%-- 			<form:input path="tipoDocumento" class="form-control form-control-sm" />--%>
			<select class="form-control form-control-sm">
				<option selected>---</option>
				<option value="1">NIF</option>
				<option value="2">NIE</option>
				<option value="3">Pasaporte</option>
			</select>
			<form:errors path="tipoDocumento" element="div" id="rojo" />
		</div>		
		<div class="form-group col-md-6 pr-md-3">
			<label for="dniNie"><spring:message code="label.dniNie" /><span style="color: red">*</span></label>
			<form:input path="dniNie" class="form-control form-control-sm" />
			<form:errors path="dniNie" element="div" id="rojo" />
		</div>	
	</div>


	<div class="form-row">
		<div class="form-group col-md-6 pr-md-3">
			<label for="email"><spring:message code="label.email" /><span style="color: red">*</span></label>
			<form:input path="email" class="form-control form-control-sm" />
			<form:errors path="email" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-6 pr-md-3">
			<label for="telefono"><spring:message code="label.telefono" /><span style="color: red">*</span></label>
			<form:input path="telefono" class="form-control form-control-sm" />
			<form:errors path="telefono" element="div" id="rojo" />
		</div>
	</div>
	
	
	<div class="form-row">	
		<div class="form-group col-md-12">
			<label for="direccion"><spring:message code="label.direccion" /><span style="color: red">*</span></label>
			<form:input path="direccion" class="form-control form-control-sm" />
			<form:errors path="direccion" element="div" id="rojo" />
		</div>	
	</div>


	<div class="form-row">
		<div class="form-group col-md-4 pr-md-3">
			<label for="muncipio"><spring:message code="label.muncipio" /><span style="color: red">*</span></label>
			<form:input path="muncipio" class="form-control form-control-sm" />
			<form:errors path="muncipio" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="provincia"><spring:message code="label.provincia" /><span style="color: red">*</span></label>
			<form:input path="provincia" class="form-control form-control-sm" />
			<form:errors path="provincia" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="codPostal"><spring:message code="label.codPostal" /><span style="color: red">*</span></label>
			<form:input path="codPostal" class="form-control form-control-sm" />
			<form:errors path="codPostal" element="div" id="rojo" />
		</div>
	</div>


	<div class="form-row">
		<div class="form-group col-md-4 pr-md-3">
			<label for="pais"><spring:message code="label.pais" /><span style="color: red">*</span></label>
			<form:input path="pais" class="form-control form-control-sm" />
			<form:errors path="pais" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="nacionalidad"><spring:message
					code="label.nacionalidad" /><span style="color: red">*</span></label>
			<form:input path="nacionalidad" class="form-control form-control-sm" />
			<form:errors path="nacionalidad" element="div" id="rojo" />
		</div>
		
		<div class="form-group col-md-4 pr-md-3">
			<label for="gradoMinusvalia"><spring:message code="label.gradoMinusvalia" /></label>
<%-- 			<form:input path="gradoMinusvalia" class="form-control form-control-sm" />--%>
			<select class="form-control form-control-sm">
				<option selected>---</option>
				<option value="1">menos de 33%</option>
				<option value="2">33%</option>
				<option value="3">más de 33%</option>
			</select>
			<form:errors path="gradoMinusvalia" element="div" id="rojo" />
		</div>
	</div>



	<div class="form-row">
		 <div class="form-group col-md-4 pr-md-3">
		  <label for="titulacionUpm"><spring:message code="label.titulacionUpm" /> <span style="color: red">*</span></label>
<%-- 		  <form:input path="titulacionUpm" class="form-control form-control-sm" />--%>
			 <select class="form-control form-control-sm" id="titulacionUpm">
				 <option value="-1">---</option>
				 <optgroup label="CENTRO DE LIDERAZGO Y TECNOLOGÍA UPM">
					 <option value="484">MASTER EN LIDERAZGO INTERNACIONAL EN INGENIERÍA Y ARQUITECTURA</option>
					 <option value="489">ESPECIALIZACION EN ORGANIZACIONES INTELIGENTES HACIA LA TRANSFORMACIÓN DIGITAL</option>
				 </optgroup>
				 <optgroup label="E.T.S. Arquitectura">
					 <option value="89">Máster Universitario en Arquitectura</option>
					 <option value="90">Máster Título Propio</option>
					 <option value="156">Doctorado Arquitectura</option>
					 <option value="182">Programa Movilidad ETSI Arquitectura</option>
					 <option value="224">Arquitecto</option>
					 <option value="225">Grado en Fundamentos de  la Arquitectura</option>
					 <option value="230">Master Universitario en Comunicación Arquitectónica</option>
					 <option value="231">Máster Universitario Conservación y Restauración del Patrimonio Arquitectónico</option>
					 <option value="232">Máster Universitario en Análisis, Teoría e Historia de la Arquitectura</option>
					 <option value="233">Máster Universitario en Construcción y Tecnología Arquitectónicas</option>
					 <option value="234">Master Universitario en Construcción y Tecnología de los Edificios Históricos</option>
					 <option value="235">Máster Universitario en Diseño de Instalaciones</option>
					 <option value="236">Máster Universitario en Estructuras de la Edificación</option>
					 <option value="237">Máster Universitario en Estudios Superiores en Arquitectura y Urbanismo</option>
					 <option value="314">Grado Título Propio en Diseño de Interiores</option>
					 <option value="318">Máster en Medio Ambiente y Arquitectura Bioclimatica</option>
					 <option value="321">Metodología y Gestión Bim de Proyectos, Construcción</option>
					 <option value="333">Máster en Dirección Integrada de Proyectos de Edificación.</option>
					 <option value="335">Master en Diseño y Arquitectura de Interiores</option>
					 <option value="336">Master Universitario en Proyectos Arquitectonicos Avanzados</option>
					 <option value="337">Doctorado en Proyectos Arquitectonicos Avanzados</option>
					 <option value="339">MASTER EN REHABILITACION Y AHORRO ENERGETICO</option>
					 <option value="341">Máster en Diseño de Iluminación Arquitectónica</option>
					 <option value="342">PERIFERIAS, SOSTENIBILIDAD Y VITALIDAD URBANA</option>
					 <option value="343">Máster Patología de la Edificación</option>
					 <option value="355">Master en Real Estate y Facility Management</option>
					 <option value="357">Diseño Multimedia para la Comunicación Arquitectónica</option>
					 <option value="362">Medio Ambiente y Arquitectura Bioclimática - On Line</option>
					 <option value="376">Doctorado en Construccion y Tecnologia Arquitectonicas</option>
					 <option value="409">Master In City Sciences</option>
					 <option value="413">Direccion de Empresas Constructoras e Inmobiliarias</option>
					 <option value="421">Infografía. Diseño Multimedia para la Comunicación Arquitectónica</option>
					 <option value="424">Master Instalaciones y Arquitecturas Interactivas y Efimeras</option>
					 <option value="441">Master Universitario en Planeamiento Urbano y Territorial</option>
					 <option value="447">Cooperacion para El Desarrollo de Asentamientos Humanos Precarios</option>
					 <option value="448">Plan Grado Visitantes Arquitectura</option>
					 <option value="454">Master en Patrimonio Cultural en El Siglo Xxi: Gestión e Investigación</option>
					 <option value="455">Máster en Arquitecturas  Efímeras</option>
					 <option value="458">Máster Advanced Infographics</option>
					 <option value="472">Arquitectura, Moda y Diseño</option>
					 <option value="473">Doctorado en Sostenibilidad y Regeneracion Urbana</option>
					 <option value="478">MASTER EN FACHADAS TECNOLÓGICAS Y ENVOLVENTES SOSTENIBLES</option>
					 <option value="519">DIRECCIÓN DE EMPRESAS CONSTRUCTORAS E INMOBILIARIAS</option>
					 <option value="537">MASTER IN ADVANCED STUDIES IN COLLECTIVE HOUSING</option>
					 <option value="538">DIRECCION INTEGRADA DE PROYECTOS DE EDIFICACION Y ACTIVOS INMOBILIARIOS</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. de Caminos, Canales y Puertos">
					 <option value="18">Ingeniero de Caminos, Canales y Puertos</option>
					 <option value="19">Ingeniero de Materiales</option>
					 <option value="20">Grado en Ingeniería de Materiales</option>
					 <option value="21">Grado en Ingeniería Civil y Territorial</option>
					 <option value="96">Máster Título Propio</option>
					 <option value="98">Máster Oficial</option>
					 <option value="159">Doctorado Caminos</option>
					 <option value="192">Programa Movilidad  ETSI Caminos, Canales y Puertos</option>
					 <option value="271">Máster Universitario en Ingeniería de Caminos, Canales y Puertos</option>
					 <option value="272">Máster Universitario en Ingeniería de Materiales</option>
					 <option value="273">Máster Universitario en Sistemas de Ingeniería Civil</option>
					 <option value="274">Máster Universitario Ingeniería de las Estructuras, Cimentaciones y Materiales</option>
					 <option value="320">Master en Gestion de Infraestructuras, Equipamientos y Servicios</option>
					 <option value="338">Máster en Gestión Integrada de Proyectos de Ingeniería y Construcción</option>
					 <option value="456">Doble Master en Iccp y en Sistemas de Ingenieria Civil</option>
					 <option value="521">DOBLE GRADO EN INGENIERIA CIVIL Y TERRITORIAL Y EN ADE</option>
					 <option value="533">GRADO EN INGENIERIA CIVIL</option>
				 </optgroup>
				 <optgroup label="E.T.S. Edificación">
					 <option value="49">Arquitecto Técnico</option>
					 <option value="50">Grado en Edificación</option>
					 <option value="124">Máster Oficial</option>
					 <option value="125">Máster Habilitante</option>
					 <option value="126">Máster Titulo Propio</option>
					 <option value="167">Doctorado Arquitectura Técnica</option>
					 <option value="206">Programa Movilidad ETS Edificación</option>
					 <option value="238">Máster Universitario en Gestión en Edificación</option>
					 <option value="239">Máster Universitario en Innovación Tecnológica en Edificación</option>
					 <option value="345">Master en Eficiencia Energética en la Edificación, la Industria y el Transporte</option>
					 <option value="356">Doctorado en Innovacion Tecnologica en Edificacion</option>
					 <option value="374">Doble Grado en Edificación y Administración y Dirección de Empresas</option>
					 <option value="400">Grado propio de intensificación en "Planificación y Gestión Inmobiliaria</option>
					 <option value="460">Máster Universitario en Ejecución de Obras de Restauración y Rehabilitación</option>
					 <option value="503">DOBLE MÁSTER EN INNOVACIÓN TECNOLÓGICA EN EDIFICACIÓN Y EN EJECUCIÓN DE OBRAS</option>
					 <option value="522">PLANIFICACIÓN Y GESTIÓN INMOBILIARIA</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingeniería Civil">
					 <option value="72">Ingeniero Técnico de Obras Públicas</option>
					 <option value="143">Máster Habilitante</option>
					 <option value="144">Máster Título Propio</option>
					 <option value="173">Doctorado Obras Públicas</option>
					 <option value="189">Programa Movilidad ETS Ingeniería Civil</option>
					 <option value="219">Master Infraestructuras</option>
					 <option value="309">Máster Universitario en Planificación y Gestión de Infraestructuras</option>
					 <option value="334">Proyecto de Estructuras de Cimentación y Contención</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Industriales">
					 <option value="22">Ingeniero Industrial</option>
					 <option value="23">Ingeniero Químico</option>
					 <option value="24">Ingeniero en Organización Industrial</option>
					 <option value="25">Ingeniero en Automática y Electrónica Industrial</option>
					 <option value="26">Grado en Ingeniería en Tecnologías Industriales, espc. Ingeniería Eléctrica</option>
					 <option value="27">Grado en Ingenieria Química</option>
					 <option value="31">Máster Universitario en Ingeniería de la Energía</option>
					 <option value="101">Máster Habilitante Ingeniería Industrial</option>
					 <option value="102">Máster Título Propio</option>
					 <option value="160">Doctorado Industriales</option>
					 <option value="181">Programa Movilidad ETSI Industriales</option>
					 <option value="198">Grado en Ingeniería en Tecnologías Industriales, espc. Ingeniería Electrónica y Automática</option>
					 <option value="199">Grado en Ingeniería en Tecnologías Industriales, espc. Ingeniería Mecánica</option>
					 <option value="200">Grado en Ingeniería en Tecnologías Industriales, espc. Organización</option>
					 <option value="212">Grado en Ingenieria en Tecnologias Industriales</option>
					 <option value="223">Grado en Ingeniería de la Energía</option>
					 <option value="226">Master Oficial</option>
					 <option value="287">Máster Universitario en Automática y Robótica</option>
					 <option value="288">Máster Universitario en Ciencia y Tecnología Nuclear</option>
					 <option value="289">Máster Universitario en Economía y Gestión de la Innovación</option>
					 <option value="290">Máster Universitario en Electrónica Industrial</option>
					 <option value="291">Máster Universitario en Ingeniería Acústica en la Industria y el Transporte</option>
					 <option value="292">Máster Universitario en Ingeniería Ambiental</option>
					 <option value="293">Máster Universitario en Ingeniería de la Energía</option>
					 <option value="294">Máster Universitario en Ingeniería de Organización</option>
					 <option value="295">Máster Universitario en Ingeniería Eléctrica</option>
					 <option value="296">Máster Universitario en Ingeniería Industrial</option>
					 <option value="297">Máster Universitario en Ingeniería Mecánica</option>
					 <option value="298">Máster Universitario en Ingeniería Química</option>
					 <option value="299">Máster Universitario en Ingeniería Sísmica: Dinámica de Suelos y Estructuras</option>
					 <option value="313">Máster Universitario en Plasma, Láser y Tecnologías de Superficie</option>
					 <option value="322">Masters Degree in Numerical Simulation In Engineering With Ansys</option>
					 <option value="324">Máster en Ingeniería Automoción</option>
					 <option value="325">Master Universitario en Ingenieria Sismica: Dinamica de Suelos y Estructura</option>
					 <option value="326">Máster en Administración y Dirección Internacional de Empresas (MBA Internacional)</option>
					 <option value="327">Máster en Administración de Empresas (MBA)</option>
					 <option value="328">Especialista en Mercados Regulados y Competencia</option>
					 <option value="329">Especialista en Nuevas Fuentes de Financiación Empresarial</option>
					 <option value="330">MASTER UNIVERSITARIO EN INGENIERIA DE LA ORGANIZACION</option>
					 <option value="332">Master en Calidad Total</option>
					 <option value="340">Grado en Ingeniería de Organización</option>
					 <option value="346">Master en Eficiencia Energética en la Edificación, la Industria y el Transporte</option>
					 <option value="350">Máster Universitario en Ingeniería de Materiales</option>
					 <option value="352">International Master In Industrial Management</option>
					 <option value="377">Master Universitario en Ciencia y Tecnologia Nuclear</option>
					 <option value="390">Máster en Ingeniería de los Vehículos Híbridos y Eléctricos</option>
					 <option value="396">Doble Grado Ing en Diseño Industrial y Desarrollo Producto y en Ing Mecanica</option>
					 <option value="401">Master Universitario en Ingenieria de la Organizacion</option>
					 <option value="403">Me3 - European Joint Masters In Management And Engineering</option>
					 <option value="407">Doctorado en Ingenieria Quimica</option>
					 <option value="410">Doctorado en Economía y Gestión de la Innovación</option>
					 <option value="411">Doctorado en Ingenieria Mecanica</option>
					 <option value="430">Programa de Movilidad ETSI Industriales</option>
					 <option value="445">Doble Master Universitario en Ingenieria Industrial y en Ingenieria Sismica</option>
					 <option value="462">Doble Master Universitario en Ingenieria Industrial y en Automatica y Robot</option>
					 <option value="463">ESPECIALISTA EN FINANZAS</option>
					 <option value="467">DOBLE MASTER UNIVERSITARIO INGENIERIA INDUSTRIAL - ELECTRONICA INDUSTRIAL</option>
					 <option value="494">ANÁLISIS FINANCIERO</option>
					 <option value="514">D.M.U. EN INGENIERÍA INDUSTRIAL Y EN CIENCIA Y TECNOLOGÍA NUCLEAR</option>
					 <option value="516">Doble Master Universitario en Ingenieria Industrial y en Automatica y Robot</option>
					 <option value="531">GRADO EN INGENIERIA DE LA ENERGIA</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. de Minas y Energía">
					 <option value="28">Ingeniero de Minas</option>
					 <option value="29">Ingeniero Geólogo</option>
					 <option value="30">Ingeniero Técnico de Minas, espec. en Recursos Energéticos, Combustibles y Explosivos</option>
					 <option value="32">Grado en Ingeniería en Tecnología Minera</option>
					 <option value="103">Máster Oficial</option>
					 <option value="104">Máster Habilitante</option>
					 <option value="105">Máster Titulo Propio</option>
					 <option value="161">Doctorado Minas</option>
					 <option value="184">Programa Movilidad ETSI de Minas y Energía</option>
					 <option value="201">Grado en Ingeniería en Tecnología Minera (GITM)</option>
					 <option value="209">Grado en Ingeniería de los Recursos Energéticos, Combustibles y Explosivos (GIRECE)</option>
					 <option value="210">Grado en Ingeniería Geológica (GIG)</option>
					 <option value="275">Master en Eficiencia Energética en la Edificación, la Industria y el Transporte</option>
					 <option value="276">Máster Universitario en Ingeniería de Minas</option>
					 <option value="277">Máster Universitario en Ingeniería Geológica</option>
					 <option value="278">Máster Universitario en Invest., Model. y Análisis del Riesgo en Medio Ambiente</option>
					 <option value="279">Máster Universitario en Minería Sostenible</option>
					 <option value="315">Grado en Ingeniería de la Energía (E.T.S.I. de Minas y Energía)</option>
					 <option value="349">Máster en Ingeniería, Petróleo y Gas</option>
					 <option value="412">Master Universitario en Ingenieria de Minas</option>
					 <option value="443">Master Universitario en Gestion de Desastres</option>
					 <option value="526">Máster Universitario en Contaminación de Suelos y Aguas Subterráneas (MUCSA)</option>
					 <option value="532">GRADO EN INGENIERIA DE LA ENERGIA</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Navales">
					 <option value="35">Ingeniero Naval y Oceánico</option>
					 <option value="36">Master Habilitante</option>
					 <option value="37">Grado en Ingeniería Marítima</option>
					 <option value="109">Máster Oficial</option>
					 <option value="110">Máster Habilitante</option>
					 <option value="111">Máster Titulo Propio</option>
					 <option value="163">Doctorado Navales</option>
					 <option value="227">Grado en Arquitectura Naval</option>
					 <option value="305">Máster Universitario en Ingeniería Naval y Oceánica</option>
					 <option value="420">Programas de Movilidad ETSI Navales</option>
					 <option value="465">Master en Aprovechamiento de las Energías Renovables Marinas (MAERM)</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingeniería y Diseño Industrial">
					 <option value="62">Ingeniero Técnico Industrial, espc. en Electricidad</option>
					 <option value="63">Ingeniero Técnico Industrial, espc. en Electrónica Industrial</option>
					 <option value="64">Ingeniero Técnico Industrial, espc. en Mecánica</option>
					 <option value="65">Ingeniero Técnico Industrial, espc. Química Industrial</option>
					 <option value="67">Grado en Ingeniería Eléctrica</option>
					 <option value="68">Grado en Ingeniería Electrónica Industrial y Automática</option>
					 <option value="69">Grado en Ingeniería Mecánica</option>
					 <option value="70">Grado en Ingeniería Química</option>
					 <option value="71">Grado en Ingeniería en Diseño Industrial y Desarrollo del Producto</option>
					 <option value="140">Máster Habilitante</option>
					 <option value="141">Máster Título Propio</option>
					 <option value="142">Máster Oficial</option>
					 <option value="172">Doctorado Técnica Industrial</option>
					 <option value="190">Programas Movilidad ETS de Ingeniería y Diseño Industrial</option>
					 <option value="265">Máster Universitario en Ingeniería de Producción</option>
					 <option value="266">Máster Universitario en Ingeniería Electromecánica</option>
					 <option value="267">Máster Universitario en Ingeniería en Diseño Industrial</option>
					 <option value="399">Master en Energias Renovables y Medio Ambiente</option>
					 <option value="402">GESTION INTEGRADA DE PROYECTOS DE CLIMATIZACION</option>
					 <option value="406">Doble Grado en Ing. Eléctrica y en Ing. Eléctrica Industrial y Automática</option>
					 <option value="415">Doble Grado Ing en Diseño Industrial y Desarrollo Producto y en Ing Mecanica</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingeniería Aeronáutica y del Espacio">
					 <option value="66">Grado en Ingeniería Aeroespacial</option>
					 <option value="148">Máster Oficial</option>
					 <option value="149">Máster Habilitante</option>
					 <option value="150">Máster Título Propio</option>
					 <option value="175">Doctorado EIAE</option>
					 <option value="193">Programa Movilidad ETS de Ingeniería Aeronáutica y del Espacio</option>
					 <option value="213">Grado en Gestión y Operación del Transporte Aéreo</option>
					 <option value="246">Máster Universitario en Sistemas del Transporte Aéreo</option>
					 <option value="247">Máster Universitario en Sistemas Espaciales</option>
					 <option value="308">Máster Universitario en Ingeniería Aeronáutica</option>
					 <option value="358">Materiales Compuestos</option>
					 <option value="393">Master Universitario en Matematica Industrial</option>
					 <option value="479">Máster en Gestión de Sistemas Aeronáuticos</option>
				 </optgroup>
				 <optgroup label="E.T.S.I Agronomica, Alimentaria y de Biosistemas">
					 <option value="365">Grado en Biotecnología</option>
					 <option value="366">Grado en Ingeniería Agrícola</option>
					 <option value="367">Grado en Ingeniería Alimentaria</option>
					 <option value="368">Grado en Ingeniería y Ciencia Agronómica</option>
					 <option value="370">Grado en Ingeniería del Medio Natural</option>
					 <option value="371">Grado en Ingeniería Agroambiental</option>
					 <option value="373">Grado en Tecnología de las Industrias Agrarias y Alimentarias</option>
					 <option value="378">Máster en Ingeniería Agronómica</option>
					 <option value="379">Máster en Ingeniería Alimentaria aplicada a la Salud</option>
					 <option value="380">Máster Universitario en Agroingeniería</option>
					 <option value="381">Máster en Biotecnología Agroforestal</option>
					 <option value="382">Máster en Economía Agraria, Alimentaria y de los Recursos Naturales</option>
					 <option value="383">Máster en Física de Sistemas Complejos</option>
					 <option value="385">Máster Planificación de Proyectos de Desarrollo Rural y Gestión Sostenible</option>
					 <option value="386">Máster en Producción y Sanidad Animal</option>
					 <option value="387">Máster en Estrategias y Tecnologías para el Desarrollo. La cooperación en un mundo en cambio</option>
					 <option value="388">Máster en Tecnología Agroambiental para una Agricultura Sostenible</option>
					 <option value="389">Máster en Jardinería y Paisajismo</option>
					 <option value="417">Programas de Movilidad - E.T.S.I de Ingenieria Agronomica, Alimentaria y de Biosistemas</option>
					 <option value="427">Doble Máster en Ingeniería Agronómica y Economía Agraria, Alimentaria y de Recursos Naturales</option>
					 <option value="439">Máster en Viticultura y Enología</option>
					 <option value="442">Mu Estrategias y Tecnologias para El Desarrollo: la Cooperacion en Un Mundo</option>
					 <option value="446">Doctorado Tecnologia Agroambiental para Una Agricultura Sostenible</option>
					 <option value="451">Master en Gestión de la Calidad Alimentaria</option>
					 <option value="452">Ingeniero Técnio Agrícola Especialidad Hortofruticultura y Jardineria</option>
					 <option value="453">Ingeniero Agrónomo</option>
					 <option value="459">Master en Biologia Computacional</option>
					 <option value="468">Doctorado en Biotecnologia y Recursos Geneticos de Plantas y Microorganismo</option>
					 <option value="477">Master Univ. Planificacion de Proyectos de Dllo Rural y Gestion Sostenible</option>
					 <option value="481">Grado en Ciencias Agrarias y Bioeconomía</option>
					 <option value="482">Master en Ingeniería de Sistemas Agrarios</option>
					 <option value="499">MASTER UNIVERSITARIO EN BIOTECNOLOGIA AGROFORESTAL</option>
					 <option value="529">MASTER UNIV EN TECNOLOGIA AGROAMBIENTAL PARA UNA AGRICULTURA SOSTENIBLE</option>
				 </optgroup>
				 <optgroup label="Centro itdUPM (ETSI Agrónomica, Alimentaria y de Biosistemas)">
					 <option value="436">Máster en Estrategias y Tecnologías para el Desarrollo</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingeniería de Montes, Forestal y del Medio Natural">
					 <option value="33">Ingeniero de Montes</option>
					 <option value="34">Licenciado en Ciencias Ambientales</option>
					 <option value="87">Grado en Ingeniería del Medio Natural</option>
					 <option value="106">Máster en Técnicas de Lucha contra Incendios Forestales</option>
					 <option value="108">Máster en Gestión Sostenible de los Residuos</option>
					 <option value="162">Doctorado Montes</option>
					 <option value="171">Doctorado Forestales</option>
					 <option value="176">Doctorado EIFMN</option>
					 <option value="178">Grado Ingeniería Forestal</option>
					 <option value="188">Programa Movilidad ETS de Ingeniería de Montes, Forestal y del Medio Natural</option>
					 <option value="258">Máster Universitario El Agua en el Medio Natural. Usos y Gestión</option>
					 <option value="259">Máster Universitario en Ingeniería de Montes</option>
					 <option value="260">Máster Universitario en Restauración de Ecosistemas</option>
					 <option value="316">Ingeniero Técnico Forestal</option>
					 <option value="348">GESTION DE RESIDUOS URBANOS</option>
					 <option value="414">Master Universitario en Gestion del Turismo Ecologico y Sostenible</option>
					 <option value="437">Gestión Sostenible de los Residuos / Sustainable Waste Management</option>
					 <option value="440">Grado en Ingeniería en Tecnologías Ambientales</option>
					 <option value="511">Master Universitario en Economia Circular</option>
					 <option value="517">Máster en Jardines Históricos y Servicios Ecosistémicos de la Infraestructura</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. de Telecomunicación">
					 <option value="38">Ingeniero de Telecomunicación</option>
					 <option value="39">Grado en Ingeniería de Tecnologías y Servicios de Telecomunicación</option>
					 <option value="40">Grado en Ingeniería Biomédica</option>
					 <option value="112">Máster Oficial</option>
					 <option value="113">Máster Habilitante</option>
					 <option value="114">Máster Titulo Propio</option>
					 <option value="164">Doctorado Telecomunicación</option>
					 <option value="195">Programa Movilidad ETSI de Telecomunicación</option>
					 <option value="281">Máster Universitario en Energía Solar Fotovoltaica</option>
					 <option value="282">Máster Universitario en Ingeniería Biomédica</option>
					 <option value="283">Máster Universitario en Ingeniería de Redes y Servicios Telemáticos</option>
					 <option value="284">Máster Universitario en Ingeniería de Sistemas Electrónicos</option>
					 <option value="285">Máster Universitario en Ingeniería de Telecomunicación</option>
					 <option value="286">Máster Universitario en Tratamiento Estadístico Computacional de la Información</option>
					 <option value="323">DIRECCION Y ORGANIZACION SISTEMAS DE INFORMACION Y COMUNICACIONES</option>
					 <option value="351">Máster Universitario en Ingeniería de Materiales</option>
					 <option value="354">HUAWEI-UPM en Comunicaciones Móviles</option>
					 <option value="364">Doctorado en Ingeniería Biomédica</option>
					 <option value="408">Doctorado en Ingeniería de Sistemas Telemáticos</option>
					 <option value="425">Teoria de la Señal y Comunicaciones</option>
					 <option value="426">Master Universitario en Teoria de la Señal y Comunicaciones</option>
					 <option value="449">Administracion y Direccion de Empresas</option>
					 <option value="461">Eit Digital Track On Software And Services Architecture</option>
					 <option value="483">Doble Máster en Ingeniería de Telecomunicación y en Teoría de la Señal y Comunicaciones</option>
					 <option value="501">DOBLE MASTER INGENIERIA TELECOMUNICACION Y EN REDES Y SERVICIOS TELEMATICOS</option>
					 <option value="540">GRADO EN INGENIERIA DE TECNOLOGIAS Y SERVICIOS DE TELECOMUNICACION</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingeniería y Sistemas de Telecomunicación">
					 <option value="74">Ingeniero Técnico de Telecomunicación, espc. en Sistemas Electrónicos</option>
					 <option value="75">Ingeniero Técnico de Telecomunicación, espc. en Sistemas de Telecomunicación</option>
					 <option value="76">Ingeniero Técnico de Telecomunicación, espc. en Sonido e Imagen</option>
					 <option value="77">Ingeniero Técnico de Telecomunicación, espc. en Telemática</option>
					 <option value="78">Grado en Ingeniería Electrónica de Comunicaciones</option>
					 <option value="79">Grado en Ingeniería de Sistemas de Telecomunicación</option>
					 <option value="80">Grado en Ingeniería de Sonido e Imagen</option>
					 <option value="81">Grado en Ingeniería Telemática</option>
					 <option value="145">Máster Oficial</option>
					 <option value="146">Máster Habilitante</option>
					 <option value="147">Máster Título Propio</option>
					 <option value="174">Doctorado Ingeniería de Sistemas y Servicios para las Sociedad de la Información</option>
					 <option value="268">Máster Universitario en Ing. de Sist. y Serv. para la Sociedad de la Información</option>
					 <option value="269">Máster Universitario en Ingeniería Acústica</option>
					 <option value="431">Programa Movilidad ETS de Ingeniería y Sistemas de Telecomunicación</option>
					 <option value="435">Eit Digital Track On Internet Technology And Architecture</option>
					 <option value="469">Master Universitario en Internet de las Cosas / Internet of Things</option>
					 <option value="474">Doble Grado en Ing.electronica de Comunicaciones y en Ing.telematica</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Informáticos">
					 <option value="46">Grado en Matemáticas e Informática</option>
					 <option value="100">Máster Oficial</option>
					 <option value="121">Máster Oficial</option>
					 <option value="122">Máster Habilitante</option>
					 <option value="168">Doctorado F. Informática</option>
					 <option value="207">Grado en Ingeniería Informática</option>
					 <option value="301">Máster Universitario en Ingeniería del Software</option>
					 <option value="302">Máster Universitario en Ingeniería Informática</option>
					 <option value="303">Máster Universitario en Inteligencia Artificial</option>
					 <option value="304">Máster Universitario en Software y Sistemas</option>
					 <option value="317">Ingeniero en Informática</option>
					 <option value="353">EIT Digital Master's Programme in Data Science</option>
					 <option value="395">Alumnos Programas Movilidad</option>
					 <option value="419">Consultoria y Gestion de Empresas</option>
					 <option value="422">Master EIT Digital in Human Computer Interaction and Design</option>
					 <option value="423">Doble Grado en Ingeniería Informática y ADE</option>
					 <option value="490">Master Universitario en Ciencia de Datos</option>
					 <option value="492">Máster Interuniversitario en Métodos Formales en Ingeniería Informática</option>
					 <option value="493">Master Universitario en Innovación Digital</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingeniería de Sistemas Informáticos">
					 <option value="44">Ingeniero Técnico en Informática</option>
					 <option value="82">Ingeniero Técnico en Informática de Gestión</option>
					 <option value="83">Ingeniero Técnico en Informática de Sistemas</option>
					 <option value="84">Grado en Ingeniería de Computadores</option>
					 <option value="85">Grado en Ingeniería del Software</option>
					 <option value="123">Máster Titulo Propio</option>
					 <option value="127">Máster Oficial</option>
					 <option value="128">Máster Habilitante</option>
					 <option value="129">Máster Titulo Propio</option>
					 <option value="155">Doctorado EU Informática</option>
					 <option value="196">Programa ERASMUS ETS de Ingeniería y Sistemas Informáticos.</option>
					 <option value="222">Grado en Sistemas de Informacion</option>
					 <option value="261">Mu en Desarrollo de Aplicaciones y Servicios para Dispositivos Móviles por la Universidad</option>
					 <option value="262">Máster Universitaro en Ciencia y Tecnologías de la Computación</option>
					 <option value="263">Máster Universitario en Ingeniería Web</option>
					 <option value="264">Máster Universitario en Software de Sistemas Distribuidos y Empotrados</option>
					 <option value="391">Master en Diseño y Desarrollo de Videojuegos</option>
					 <option value="475">Doble Grado Ingenieria Computadores y Tecnologias para Sociedad Informacion</option>
					 <option value="476">Doble Grado Ingenieria de Software y Tecnologias para Sociedad Informacion</option>
					 <option value="513">Grado en Tecnologías para la Sociedad de la Informacion</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Topografía, Geodesia y Cartografía">
					 <option value="41">Ingeniero Técnico en Topografía</option>
					 <option value="42">Ingeniero en Geodesia y Cartografía</option>
					 <option value="115">Máster Oficial</option>
					 <option value="116">Máster Habilitante</option>
					 <option value="117">Máster Titulo Propio</option>
					 <option value="165">Doctorado Topografía</option>
					 <option value="180">Máster en Ingeniería en Geodesia y Cartografía</option>
					 <option value="197">Programa Movilidad ETSI Topografía, Geodisa y Cartografía</option>
					 <option value="202">Grado en Ingeniería Geomática y Topografía</option>
					 <option value="306">Máster Universitario en Ingeniería Geodésica y Cartografía</option>
					 <option value="508">Grado en Ingeniería Geomática</option>
					 <option value="509">Grado en Ingeniería de las Tecnologías de la Información Geoespacial</option>
					 <option value="510">Máster Oficial en Análisis del Riesgo Sísmico mediante Tecnologías Geoespaciales</option>
				 </optgroup>
				 <optgroup label="Facultad de Ciencias de la Actividad Física y del Deporte (INEF)">
					 <option value="47">Licenciado en CC. de la Actividad Física y del Deporte</option>
					 <option value="48">Grado en Ciencias de la Actividad Física y del Deporte</option>
					 <option value="118">Máster Oficial</option>
					 <option value="119">Máster Habilitante</option>
					 <option value="120">Máster Titulo Propio</option>
					 <option value="177">Doctorado INEF</option>
					 <option value="205">Programa Movilidad Facultad de Ciencias de la Actividad Física y del Deporte</option>
					 <option value="244">Máster Universitario en Dirección de Org. e Inst. de la Actividad Física y del Deporte</option>
					 <option value="245">Máster Universitario en Ciencias de la Actividad Física y del Deporte</option>
					 <option value="397">Master en entrenamiento personal</option>
					 <option value="444">PREVENCION, INTERVENCION Y RECUPERACION FUNCIONAL DE LESIONES EN LA ACTIVID</option>
					 <option value="486">Grado en Ciencias de la Actividad Física y del Deporte</option>
				 </optgroup>
				 <optgroup label="Centro Superior de Diseño de Moda de Madrid">
					 <option value="217">Título de Enseñanzas Artísticas Superiores</option>
					 <option value="361">Grado en Diseño de Moda</option>
					 <option value="432">Programa Movilidad Centro Superior de Diseño de Moda de Madrid</option>
					 <option value="534">Tecnología e Innovación en Diseño de Moda</option>
					 <option value="535">Máster Universitario en Tecnología e Innovación en Diseño de Moda</option>
				 </optgroup>
				 <optgroup label="Escuela Internacional de Doctorado de la UPM">
					 <option value="487">DOCTORADO EN INNOVACION TECNOLOGICA EN EDIFICACION</option>
					 <option value="491">Doctorado en Software Sistemas y Computación de la ETSI Informáticos</option>
					 <option value="495">DOCTORADO EN PATRIMONIO ARQUITECTONICO</option>
					 <option value="496">DOCTORADO EN INGENIERIA DE ESTRUCTURAS, CIMENTACIONES Y MATERIALES</option>
					 <option value="497">DOCTORADO EN INGENIERIA DE PRODUCCION Y DISEÑO INDUSTRIAL</option>
					 <option value="498">DOCTORADO EN INGENIERIA BIOMEDICA</option>
					 <option value="500">DOCTORADO EN INNOVACION TECNOLOGICA EN EDIFICACION</option>
					 <option value="502">DOCTORADO EN INGENIERIA GEOMATICA</option>
					 <option value="504">DOCTORADO EN ARQUITECTURA Y URBANISMO</option>
					 <option value="505">DOCTORADO EN INGENIERIA DE SISTEMAS TELEMATICOS</option>
					 <option value="506">DOCTORADO TECNOLOGIA AGROAMBIENTAL PARA UNA AGRICULTURA SOSTENIBLE</option>
					 <option value="507">DOCTORADO EN INGENIERIA MECANICA</option>
					 <option value="512">DOCTORADO EN AUTOMATICA Y ROBOTICA</option>
					 <option value="520">PROYECTOS ARQUITECTONICOS AVANZADOS</option>
					 <option value="523">DOCTORADO EN INGENIERIA Y GESTION DEL MEDIO NATURAL</option>
					 <option value="524">DOCTORADO EN CONSTRUCCION Y TECNOLOGIA ARQUITECTONICAS</option>
					 <option value="527">DOCTORADO EN ECOLOGIA. CONSERVACION Y RESTAURACION DE ECOSISTEMAS</option>
					 <option value="528">Doctorado en Arquitectura, Diseño, Moda &amp; Sociedad</option>
					 <option value="530">DOCTORADO EN COMUNICACION ARQUITECTONICA</option>
					 <option value="536">DOCTORADO EN CIENCIAS Y TECNOLOGIAS DE LA COMPUTACION PARA SMART CITIES</option>
					 <option value="539">DOCTORADO EN INGENIERIA AMBIENTAL, QUIMICA Y DE LOS MATERIALES</option>
				 </optgroup>
				 <optgroup label="EPES">
				 </optgroup>
				 <optgroup label="Centro Virtual Master Universitario en Eficiencia Energética en la Edificación, Industria y Transporte">
					 <option value="344">Master en Eficiencia Energética en la Edificación, la Industria y el Transporte</option>
				 </optgroup>
				 <optgroup label="Instituto Universitario de Investigación de Automóviles">
					 <option value="404">Máster en Ingeniería de Automoción</option>
					 <option value="405">Máster en Ingeniería de los Vehículos Híbridos y Eléctricos</option>
					 <option value="450">Master en Ingeniería de vehículos autónomos y conectados</option>
				 </optgroup>
				 <optgroup label="MASTER UNIVERSITARIO EN CIBERSEGURIDAD (MUCS)">
					 <option value="438">Máster Universitario en Ciberseguridad</option>
				 </optgroup>
				 <optgroup label="Rectorado">
					 <option value="433">Especialización en Gestion de Empresas</option>
					 <option value="470">LIDERAZGO INTERNACIONAL EN INGENIERÍA Y ARQUITECTURA</option>
					 <option value="480">EXPERTO EN ORGANIZACIONES INTELIGENTES HACIA LA TRANSFORMACION DIGITAL</option>
					 <option value="488">Especialización en Organizaciones Inteligentes hacia la Trasformacion Digital</option>
				 </optgroup>
				 <optgroup label="ICE">
					 <option value="221">Master Universitario en formación del Profesorado de Educación Secundaria, Bachillerato y Formación Profesonal</option>
					 <option value="310">Formación del Profesorado en E.S.O. y Bachillerato (Esp. Educación Física)</option>
					 <option value="311">Formación del Profesorado en E.S.O. y Bachillerato (Esp. Expresión Gráfica))</option>
					 <option value="312">Formación del Profesorado en E.S.O. y Bachillerato (Esp. Tecnología)</option>
					 <option value="319">Máster en Gestión y Dirección Hotelera</option>
				 </optgroup>
				 <optgroup label="Centro Virtual: Máster en Energías Renovables y Medio Ambiente">
					 <option value="331">Máster en Energías Renovables y Medio Ambiente</option>
				 </optgroup>
			 </select>
			 <form:errors path="titulacionUpm" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="fechaInicio"><spring:message
					code="label.fechaInicio" /><span style="color: red">*</span></label>
			<form:input path="fechaInicio" class="form-control form-control-sm datepicker" data-date-format="dd-mm-yyyy" placeholder="dd-mm-aaaa" />
			<form:errors path="fechaInicio" element="div" id="rojo" />
		</div>
		<div class="form-group col-md-4 pr-md-3">
			<label for="fechaFin"><spring:message code="label.fechaFin" /></label>
			<form:input path="fechaFin" class="form-control form-control-sm datepicker" data-date-format="dd-mm-yyyy" placeholder="dd-mm-aaaa" />
			<form:errors path="fechaFin" element="div" id="rojo" />
			<span style="color:red; font-size: 0.8rem">Rellenar sólo en caso de haber finalizado los estudios</span>
		</div>
	</div>

<br>

	<a href="./listadoEstudiantes1.do" class="btn btn-rounded btn-secondary btn-sm"><em class="fas fa-times-circle"></em>&nbsp;&nbsp;Cancelar</a>
	<button type="submit" class="btn btn-rounded btn-success btn-sm">
		<em class="fas fa-save"></em> &nbsp;&nbsp;Guardar
	</button>


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
    
    