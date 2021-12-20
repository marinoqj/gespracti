
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
				<option value="3">m�s de 33%</option>
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
				 <optgroup label="CENTRO DE LIDERAZGO Y TECNOLOG�A UPM">
					 <option value="484">MASTER EN LIDERAZGO INTERNACIONAL EN INGENIER�A Y ARQUITECTURA</option>
					 <option value="489">ESPECIALIZACION EN ORGANIZACIONES INTELIGENTES HACIA LA TRANSFORMACI�N DIGITAL</option>
				 </optgroup>
				 <optgroup label="E.T.S. Arquitectura">
					 <option value="89">M�ster Universitario en Arquitectura</option>
					 <option value="90">M�ster T�tulo Propio</option>
					 <option value="156">Doctorado Arquitectura</option>
					 <option value="182">Programa Movilidad ETSI Arquitectura</option>
					 <option value="224">Arquitecto</option>
					 <option value="225">Grado en Fundamentos de  la Arquitectura</option>
					 <option value="230">Master Universitario en Comunicaci�n Arquitect�nica</option>
					 <option value="231">M�ster Universitario Conservaci�n y Restauraci�n del Patrimonio Arquitect�nico</option>
					 <option value="232">M�ster Universitario en An�lisis, Teor�a e Historia de la Arquitectura</option>
					 <option value="233">M�ster Universitario en Construcci�n y Tecnolog�a Arquitect�nicas</option>
					 <option value="234">Master Universitario en Construcci�n y Tecnolog�a de los Edificios Hist�ricos</option>
					 <option value="235">M�ster Universitario en Dise�o de Instalaciones</option>
					 <option value="236">M�ster Universitario en Estructuras de la Edificaci�n</option>
					 <option value="237">M�ster Universitario en Estudios Superiores en Arquitectura y Urbanismo</option>
					 <option value="314">Grado T�tulo Propio en Dise�o de Interiores</option>
					 <option value="318">M�ster en Medio Ambiente y Arquitectura Bioclimatica</option>
					 <option value="321">Metodolog�a y Gesti�n Bim de Proyectos, Construcci�n</option>
					 <option value="333">M�ster en Direcci�n Integrada de Proyectos de Edificaci�n.</option>
					 <option value="335">Master en Dise�o y Arquitectura de Interiores</option>
					 <option value="336">Master Universitario en Proyectos Arquitectonicos Avanzados</option>
					 <option value="337">Doctorado en Proyectos Arquitectonicos Avanzados</option>
					 <option value="339">MASTER EN REHABILITACION Y AHORRO ENERGETICO</option>
					 <option value="341">M�ster en Dise�o de Iluminaci�n Arquitect�nica</option>
					 <option value="342">PERIFERIAS, SOSTENIBILIDAD Y VITALIDAD URBANA</option>
					 <option value="343">M�ster Patolog�a de la Edificaci�n</option>
					 <option value="355">Master en Real Estate y Facility Management</option>
					 <option value="357">Dise�o Multimedia para la Comunicaci�n Arquitect�nica</option>
					 <option value="362">Medio Ambiente y Arquitectura Bioclim�tica - On Line</option>
					 <option value="376">Doctorado en Construccion y Tecnologia Arquitectonicas</option>
					 <option value="409">Master In City Sciences</option>
					 <option value="413">Direccion de Empresas Constructoras e Inmobiliarias</option>
					 <option value="421">Infograf�a. Dise�o Multimedia para la Comunicaci�n Arquitect�nica</option>
					 <option value="424">Master Instalaciones y Arquitecturas Interactivas y Efimeras</option>
					 <option value="441">Master Universitario en Planeamiento Urbano y Territorial</option>
					 <option value="447">Cooperacion para El Desarrollo de Asentamientos Humanos Precarios</option>
					 <option value="448">Plan Grado Visitantes Arquitectura</option>
					 <option value="454">Master en Patrimonio Cultural en El Siglo Xxi: Gesti�n e Investigaci�n</option>
					 <option value="455">M�ster en Arquitecturas  Ef�meras</option>
					 <option value="458">M�ster Advanced Infographics</option>
					 <option value="472">Arquitectura, Moda y Dise�o</option>
					 <option value="473">Doctorado en Sostenibilidad y Regeneracion Urbana</option>
					 <option value="478">MASTER EN FACHADAS TECNOL�GICAS Y ENVOLVENTES SOSTENIBLES</option>
					 <option value="519">DIRECCI�N DE EMPRESAS CONSTRUCTORAS E INMOBILIARIAS</option>
					 <option value="537">MASTER IN ADVANCED STUDIES IN COLLECTIVE HOUSING</option>
					 <option value="538">DIRECCION INTEGRADA DE PROYECTOS DE EDIFICACION Y ACTIVOS INMOBILIARIOS</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. de Caminos, Canales y Puertos">
					 <option value="18">Ingeniero de Caminos, Canales y Puertos</option>
					 <option value="19">Ingeniero de Materiales</option>
					 <option value="20">Grado en Ingenier�a de Materiales</option>
					 <option value="21">Grado en Ingenier�a Civil y Territorial</option>
					 <option value="96">M�ster T�tulo Propio</option>
					 <option value="98">M�ster Oficial</option>
					 <option value="159">Doctorado Caminos</option>
					 <option value="192">Programa Movilidad  ETSI Caminos, Canales y Puertos</option>
					 <option value="271">M�ster Universitario en Ingenier�a de Caminos, Canales y Puertos</option>
					 <option value="272">M�ster Universitario en Ingenier�a de Materiales</option>
					 <option value="273">M�ster Universitario en Sistemas de Ingenier�a Civil</option>
					 <option value="274">M�ster Universitario Ingenier�a de las Estructuras, Cimentaciones y Materiales</option>
					 <option value="320">Master en Gestion de Infraestructuras, Equipamientos y Servicios</option>
					 <option value="338">M�ster en Gesti�n Integrada de Proyectos de Ingenier�a y Construcci�n</option>
					 <option value="456">Doble Master en Iccp y en Sistemas de Ingenieria Civil</option>
					 <option value="521">DOBLE GRADO EN INGENIERIA CIVIL Y TERRITORIAL Y EN ADE</option>
					 <option value="533">GRADO EN INGENIERIA CIVIL</option>
				 </optgroup>
				 <optgroup label="E.T.S. Edificaci�n">
					 <option value="49">Arquitecto T�cnico</option>
					 <option value="50">Grado en Edificaci�n</option>
					 <option value="124">M�ster Oficial</option>
					 <option value="125">M�ster Habilitante</option>
					 <option value="126">M�ster Titulo Propio</option>
					 <option value="167">Doctorado Arquitectura T�cnica</option>
					 <option value="206">Programa Movilidad ETS Edificaci�n</option>
					 <option value="238">M�ster Universitario en Gesti�n en Edificaci�n</option>
					 <option value="239">M�ster Universitario en Innovaci�n Tecnol�gica en Edificaci�n</option>
					 <option value="345">Master en Eficiencia Energ�tica en la Edificaci�n, la Industria y el Transporte</option>
					 <option value="356">Doctorado en Innovacion Tecnologica en Edificacion</option>
					 <option value="374">Doble Grado en Edificaci�n y Administraci�n y Direcci�n de Empresas</option>
					 <option value="400">Grado propio de intensificaci�n en "Planificaci�n y Gesti�n Inmobiliaria</option>
					 <option value="460">M�ster Universitario en Ejecuci�n de Obras de Restauraci�n y Rehabilitaci�n</option>
					 <option value="503">DOBLE M�STER EN INNOVACI�N TECNOL�GICA EN EDIFICACI�N Y EN EJECUCI�N DE OBRAS</option>
					 <option value="522">PLANIFICACI�N Y GESTI�N INMOBILIARIA</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingenier�a Civil">
					 <option value="72">Ingeniero T�cnico de Obras P�blicas</option>
					 <option value="143">M�ster Habilitante</option>
					 <option value="144">M�ster T�tulo Propio</option>
					 <option value="173">Doctorado Obras P�blicas</option>
					 <option value="189">Programa Movilidad ETS Ingenier�a Civil</option>
					 <option value="219">Master Infraestructuras</option>
					 <option value="309">M�ster Universitario en Planificaci�n y Gesti�n de Infraestructuras</option>
					 <option value="334">Proyecto de Estructuras de Cimentaci�n y Contenci�n</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Industriales">
					 <option value="22">Ingeniero Industrial</option>
					 <option value="23">Ingeniero Qu�mico</option>
					 <option value="24">Ingeniero en Organizaci�n Industrial</option>
					 <option value="25">Ingeniero en Autom�tica y Electr�nica Industrial</option>
					 <option value="26">Grado en Ingenier�a en Tecnolog�as Industriales, espc. Ingenier�a El�ctrica</option>
					 <option value="27">Grado en Ingenieria Qu�mica</option>
					 <option value="31">M�ster Universitario en Ingenier�a de la Energ�a</option>
					 <option value="101">M�ster Habilitante Ingenier�a Industrial</option>
					 <option value="102">M�ster T�tulo Propio</option>
					 <option value="160">Doctorado Industriales</option>
					 <option value="181">Programa Movilidad ETSI Industriales</option>
					 <option value="198">Grado en Ingenier�a en Tecnolog�as Industriales, espc. Ingenier�a Electr�nica y Autom�tica</option>
					 <option value="199">Grado en Ingenier�a en Tecnolog�as Industriales, espc. Ingenier�a Mec�nica</option>
					 <option value="200">Grado en Ingenier�a en Tecnolog�as Industriales, espc. Organizaci�n</option>
					 <option value="212">Grado en Ingenieria en Tecnologias Industriales</option>
					 <option value="223">Grado en Ingenier�a de la Energ�a</option>
					 <option value="226">Master Oficial</option>
					 <option value="287">M�ster Universitario en Autom�tica y Rob�tica</option>
					 <option value="288">M�ster Universitario en Ciencia y Tecnolog�a Nuclear</option>
					 <option value="289">M�ster Universitario en Econom�a y Gesti�n de la Innovaci�n</option>
					 <option value="290">M�ster Universitario en Electr�nica Industrial</option>
					 <option value="291">M�ster Universitario en Ingenier�a Ac�stica en la Industria y el Transporte</option>
					 <option value="292">M�ster Universitario en Ingenier�a Ambiental</option>
					 <option value="293">M�ster Universitario en Ingenier�a de la Energ�a</option>
					 <option value="294">M�ster Universitario en Ingenier�a de Organizaci�n</option>
					 <option value="295">M�ster Universitario en Ingenier�a El�ctrica</option>
					 <option value="296">M�ster Universitario en Ingenier�a Industrial</option>
					 <option value="297">M�ster Universitario en Ingenier�a Mec�nica</option>
					 <option value="298">M�ster Universitario en Ingenier�a Qu�mica</option>
					 <option value="299">M�ster Universitario en Ingenier�a S�smica: Din�mica de Suelos y Estructuras</option>
					 <option value="313">M�ster Universitario en Plasma, L�ser y Tecnolog�as de Superficie</option>
					 <option value="322">Masters Degree in Numerical Simulation In Engineering With Ansys</option>
					 <option value="324">M�ster en Ingenier�a Automoci�n</option>
					 <option value="325">Master Universitario en Ingenieria Sismica: Dinamica de Suelos y Estructura</option>
					 <option value="326">M�ster en Administraci�n y Direcci�n Internacional de Empresas (MBA Internacional)</option>
					 <option value="327">M�ster en Administraci�n de Empresas (MBA)</option>
					 <option value="328">Especialista en Mercados Regulados y Competencia</option>
					 <option value="329">Especialista en Nuevas Fuentes de Financiaci�n Empresarial</option>
					 <option value="330">MASTER UNIVERSITARIO EN INGENIERIA DE LA ORGANIZACION</option>
					 <option value="332">Master en Calidad Total</option>
					 <option value="340">Grado en Ingenier�a de Organizaci�n</option>
					 <option value="346">Master en Eficiencia Energ�tica en la Edificaci�n, la Industria y el Transporte</option>
					 <option value="350">M�ster Universitario en Ingenier�a de Materiales</option>
					 <option value="352">International Master In Industrial Management</option>
					 <option value="377">Master Universitario en Ciencia y Tecnologia Nuclear</option>
					 <option value="390">M�ster en Ingenier�a de los Veh�culos H�bridos y El�ctricos</option>
					 <option value="396">Doble Grado Ing en Dise�o Industrial y Desarrollo Producto y en Ing Mecanica</option>
					 <option value="401">Master Universitario en Ingenieria de la Organizacion</option>
					 <option value="403">Me3 - European Joint Masters In Management And Engineering</option>
					 <option value="407">Doctorado en Ingenieria Quimica</option>
					 <option value="410">Doctorado en Econom�a y Gesti�n de la Innovaci�n</option>
					 <option value="411">Doctorado en Ingenieria Mecanica</option>
					 <option value="430">Programa de Movilidad ETSI Industriales</option>
					 <option value="445">Doble Master Universitario en Ingenieria Industrial y en Ingenieria Sismica</option>
					 <option value="462">Doble Master Universitario en Ingenieria Industrial y en Automatica y Robot</option>
					 <option value="463">ESPECIALISTA EN FINANZAS</option>
					 <option value="467">DOBLE MASTER UNIVERSITARIO INGENIERIA INDUSTRIAL - ELECTRONICA INDUSTRIAL</option>
					 <option value="494">AN�LISIS FINANCIERO</option>
					 <option value="514">D.M.U. EN INGENIER�A INDUSTRIAL Y EN CIENCIA Y TECNOLOG�A NUCLEAR</option>
					 <option value="516">Doble Master Universitario en Ingenieria Industrial y en Automatica y Robot</option>
					 <option value="531">GRADO EN INGENIERIA DE LA ENERGIA</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. de Minas y Energ�a">
					 <option value="28">Ingeniero de Minas</option>
					 <option value="29">Ingeniero Ge�logo</option>
					 <option value="30">Ingeniero T�cnico de Minas, espec. en Recursos Energ�ticos, Combustibles y Explosivos</option>
					 <option value="32">Grado en Ingenier�a en Tecnolog�a Minera</option>
					 <option value="103">M�ster Oficial</option>
					 <option value="104">M�ster Habilitante</option>
					 <option value="105">M�ster Titulo Propio</option>
					 <option value="161">Doctorado Minas</option>
					 <option value="184">Programa Movilidad ETSI de Minas y Energ�a</option>
					 <option value="201">Grado en Ingenier�a en Tecnolog�a Minera (GITM)</option>
					 <option value="209">Grado en Ingenier�a de los Recursos Energ�ticos, Combustibles y Explosivos (GIRECE)</option>
					 <option value="210">Grado en Ingenier�a Geol�gica (GIG)</option>
					 <option value="275">Master en Eficiencia Energ�tica en la Edificaci�n, la Industria y el Transporte</option>
					 <option value="276">M�ster Universitario en Ingenier�a de Minas</option>
					 <option value="277">M�ster Universitario en Ingenier�a Geol�gica</option>
					 <option value="278">M�ster Universitario en Invest., Model. y An�lisis del Riesgo en Medio Ambiente</option>
					 <option value="279">M�ster Universitario en Miner�a Sostenible</option>
					 <option value="315">Grado en Ingenier�a de la Energ�a (E.T.S.I. de Minas y Energ�a)</option>
					 <option value="349">M�ster en Ingenier�a, Petr�leo y Gas</option>
					 <option value="412">Master Universitario en Ingenieria de Minas</option>
					 <option value="443">Master Universitario en Gestion de Desastres</option>
					 <option value="526">M�ster Universitario en Contaminaci�n de Suelos y Aguas Subterr�neas (MUCSA)</option>
					 <option value="532">GRADO EN INGENIERIA DE LA ENERGIA</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Navales">
					 <option value="35">Ingeniero Naval y Oce�nico</option>
					 <option value="36">Master Habilitante</option>
					 <option value="37">Grado en Ingenier�a Mar�tima</option>
					 <option value="109">M�ster Oficial</option>
					 <option value="110">M�ster Habilitante</option>
					 <option value="111">M�ster Titulo Propio</option>
					 <option value="163">Doctorado Navales</option>
					 <option value="227">Grado en Arquitectura Naval</option>
					 <option value="305">M�ster Universitario en Ingenier�a Naval y Oce�nica</option>
					 <option value="420">Programas de Movilidad ETSI Navales</option>
					 <option value="465">Master en Aprovechamiento de las Energ�as Renovables Marinas (MAERM)</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingenier�a y Dise�o Industrial">
					 <option value="62">Ingeniero T�cnico Industrial, espc. en Electricidad</option>
					 <option value="63">Ingeniero T�cnico Industrial, espc. en Electr�nica Industrial</option>
					 <option value="64">Ingeniero T�cnico Industrial, espc. en Mec�nica</option>
					 <option value="65">Ingeniero T�cnico Industrial, espc. Qu�mica Industrial</option>
					 <option value="67">Grado en Ingenier�a El�ctrica</option>
					 <option value="68">Grado en Ingenier�a Electr�nica Industrial y Autom�tica</option>
					 <option value="69">Grado en Ingenier�a Mec�nica</option>
					 <option value="70">Grado en Ingenier�a Qu�mica</option>
					 <option value="71">Grado en Ingenier�a en Dise�o Industrial y Desarrollo del Producto</option>
					 <option value="140">M�ster Habilitante</option>
					 <option value="141">M�ster T�tulo Propio</option>
					 <option value="142">M�ster Oficial</option>
					 <option value="172">Doctorado T�cnica Industrial</option>
					 <option value="190">Programas Movilidad ETS de Ingenier�a y Dise�o Industrial</option>
					 <option value="265">M�ster Universitario en Ingenier�a de Producci�n</option>
					 <option value="266">M�ster Universitario en Ingenier�a Electromec�nica</option>
					 <option value="267">M�ster Universitario en Ingenier�a en Dise�o Industrial</option>
					 <option value="399">Master en Energias Renovables y Medio Ambiente</option>
					 <option value="402">GESTION INTEGRADA DE PROYECTOS DE CLIMATIZACION</option>
					 <option value="406">Doble Grado en Ing. El�ctrica y en Ing. El�ctrica Industrial y Autom�tica</option>
					 <option value="415">Doble Grado Ing en Dise�o Industrial y Desarrollo Producto y en Ing Mecanica</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingenier�a Aeron�utica y del Espacio">
					 <option value="66">Grado en Ingenier�a Aeroespacial</option>
					 <option value="148">M�ster Oficial</option>
					 <option value="149">M�ster Habilitante</option>
					 <option value="150">M�ster T�tulo Propio</option>
					 <option value="175">Doctorado EIAE</option>
					 <option value="193">Programa Movilidad ETS de Ingenier�a Aeron�utica y del Espacio</option>
					 <option value="213">Grado en Gesti�n y Operaci�n del Transporte A�reo</option>
					 <option value="246">M�ster Universitario en Sistemas del Transporte A�reo</option>
					 <option value="247">M�ster Universitario en Sistemas Espaciales</option>
					 <option value="308">M�ster Universitario en Ingenier�a Aeron�utica</option>
					 <option value="358">Materiales Compuestos</option>
					 <option value="393">Master Universitario en Matematica Industrial</option>
					 <option value="479">M�ster en Gesti�n de Sistemas Aeron�uticos</option>
				 </optgroup>
				 <optgroup label="E.T.S.I Agronomica, Alimentaria y de Biosistemas">
					 <option value="365">Grado en Biotecnolog�a</option>
					 <option value="366">Grado en Ingenier�a Agr�cola</option>
					 <option value="367">Grado en Ingenier�a Alimentaria</option>
					 <option value="368">Grado en Ingenier�a y Ciencia Agron�mica</option>
					 <option value="370">Grado en Ingenier�a del Medio Natural</option>
					 <option value="371">Grado en Ingenier�a Agroambiental</option>
					 <option value="373">Grado en Tecnolog�a de las Industrias Agrarias y Alimentarias</option>
					 <option value="378">M�ster en Ingenier�a Agron�mica</option>
					 <option value="379">M�ster en Ingenier�a Alimentaria aplicada a la Salud</option>
					 <option value="380">M�ster Universitario en Agroingenier�a</option>
					 <option value="381">M�ster en Biotecnolog�a Agroforestal</option>
					 <option value="382">M�ster en Econom�a Agraria, Alimentaria y de los Recursos Naturales</option>
					 <option value="383">M�ster en F�sica de Sistemas Complejos</option>
					 <option value="385">M�ster Planificaci�n de Proyectos de Desarrollo Rural y Gesti�n Sostenible</option>
					 <option value="386">M�ster en Producci�n y Sanidad Animal</option>
					 <option value="387">M�ster en Estrategias y Tecnolog�as para el Desarrollo. La cooperaci�n en un mundo en cambio</option>
					 <option value="388">M�ster en Tecnolog�a Agroambiental para una Agricultura Sostenible</option>
					 <option value="389">M�ster en Jardiner�a y Paisajismo</option>
					 <option value="417">Programas de Movilidad - E.T.S.I de Ingenieria Agronomica, Alimentaria y de Biosistemas</option>
					 <option value="427">Doble M�ster en Ingenier�a Agron�mica y Econom�a Agraria, Alimentaria y de Recursos Naturales</option>
					 <option value="439">M�ster en Viticultura y Enolog�a</option>
					 <option value="442">Mu Estrategias y Tecnologias para El Desarrollo: la Cooperacion en Un Mundo</option>
					 <option value="446">Doctorado Tecnologia Agroambiental para Una Agricultura Sostenible</option>
					 <option value="451">Master en Gesti�n de la Calidad Alimentaria</option>
					 <option value="452">Ingeniero T�cnio Agr�cola Especialidad Hortofruticultura y Jardineria</option>
					 <option value="453">Ingeniero Agr�nomo</option>
					 <option value="459">Master en Biologia Computacional</option>
					 <option value="468">Doctorado en Biotecnologia y Recursos Geneticos de Plantas y Microorganismo</option>
					 <option value="477">Master Univ. Planificacion de Proyectos de Dllo Rural y Gestion Sostenible</option>
					 <option value="481">Grado en Ciencias Agrarias y Bioeconom�a</option>
					 <option value="482">Master en Ingenier�a de Sistemas Agrarios</option>
					 <option value="499">MASTER UNIVERSITARIO EN BIOTECNOLOGIA AGROFORESTAL</option>
					 <option value="529">MASTER UNIV EN TECNOLOGIA AGROAMBIENTAL PARA UNA AGRICULTURA SOSTENIBLE</option>
				 </optgroup>
				 <optgroup label="Centro itdUPM (ETSI Agr�nomica, Alimentaria y de Biosistemas)">
					 <option value="436">M�ster en Estrategias y Tecnolog�as para el Desarrollo</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingenier�a de Montes, Forestal y del Medio Natural">
					 <option value="33">Ingeniero de Montes</option>
					 <option value="34">Licenciado en Ciencias Ambientales</option>
					 <option value="87">Grado en Ingenier�a del Medio Natural</option>
					 <option value="106">M�ster en T�cnicas de Lucha contra Incendios Forestales</option>
					 <option value="108">M�ster en Gesti�n Sostenible de los Residuos</option>
					 <option value="162">Doctorado Montes</option>
					 <option value="171">Doctorado Forestales</option>
					 <option value="176">Doctorado EIFMN</option>
					 <option value="178">Grado Ingenier�a Forestal</option>
					 <option value="188">Programa Movilidad ETS de Ingenier�a de Montes, Forestal y del Medio Natural</option>
					 <option value="258">M�ster Universitario El Agua en el Medio Natural. Usos y Gesti�n</option>
					 <option value="259">M�ster Universitario en Ingenier�a de Montes</option>
					 <option value="260">M�ster Universitario en Restauraci�n de Ecosistemas</option>
					 <option value="316">Ingeniero T�cnico Forestal</option>
					 <option value="348">GESTION DE RESIDUOS URBANOS</option>
					 <option value="414">Master Universitario en Gestion del Turismo Ecologico y Sostenible</option>
					 <option value="437">Gesti�n Sostenible de los Residuos / Sustainable Waste Management</option>
					 <option value="440">Grado en Ingenier�a en Tecnolog�as Ambientales</option>
					 <option value="511">Master Universitario en Economia Circular</option>
					 <option value="517">M�ster en Jardines Hist�ricos y Servicios Ecosist�micos de la Infraestructura</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. de Telecomunicaci�n">
					 <option value="38">Ingeniero de Telecomunicaci�n</option>
					 <option value="39">Grado en Ingenier�a de Tecnolog�as y Servicios de Telecomunicaci�n</option>
					 <option value="40">Grado en Ingenier�a Biom�dica</option>
					 <option value="112">M�ster Oficial</option>
					 <option value="113">M�ster Habilitante</option>
					 <option value="114">M�ster Titulo Propio</option>
					 <option value="164">Doctorado Telecomunicaci�n</option>
					 <option value="195">Programa Movilidad ETSI de Telecomunicaci�n</option>
					 <option value="281">M�ster Universitario en Energ�a Solar Fotovoltaica</option>
					 <option value="282">M�ster Universitario en Ingenier�a Biom�dica</option>
					 <option value="283">M�ster Universitario en Ingenier�a de Redes y Servicios Telem�ticos</option>
					 <option value="284">M�ster Universitario en Ingenier�a de Sistemas Electr�nicos</option>
					 <option value="285">M�ster Universitario en Ingenier�a de Telecomunicaci�n</option>
					 <option value="286">M�ster Universitario en Tratamiento Estad�stico Computacional de la Informaci�n</option>
					 <option value="323">DIRECCION Y ORGANIZACION SISTEMAS DE INFORMACION Y COMUNICACIONES</option>
					 <option value="351">M�ster Universitario en Ingenier�a de Materiales</option>
					 <option value="354">HUAWEI-UPM en Comunicaciones M�viles</option>
					 <option value="364">Doctorado en Ingenier�a Biom�dica</option>
					 <option value="408">Doctorado en Ingenier�a de Sistemas Telem�ticos</option>
					 <option value="425">Teoria de la Se�al y Comunicaciones</option>
					 <option value="426">Master Universitario en Teoria de la Se�al y Comunicaciones</option>
					 <option value="449">Administracion y Direccion de Empresas</option>
					 <option value="461">Eit Digital Track On Software And Services Architecture</option>
					 <option value="483">Doble M�ster en Ingenier�a de Telecomunicaci�n y en Teor�a de la Se�al y Comunicaciones</option>
					 <option value="501">DOBLE MASTER INGENIERIA TELECOMUNICACION Y EN REDES Y SERVICIOS TELEMATICOS</option>
					 <option value="540">GRADO EN INGENIERIA DE TECNOLOGIAS Y SERVICIOS DE TELECOMUNICACION</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingenier�a y Sistemas de Telecomunicaci�n">
					 <option value="74">Ingeniero T�cnico de Telecomunicaci�n, espc. en Sistemas Electr�nicos</option>
					 <option value="75">Ingeniero T�cnico de Telecomunicaci�n, espc. en Sistemas de Telecomunicaci�n</option>
					 <option value="76">Ingeniero T�cnico de Telecomunicaci�n, espc. en Sonido e Imagen</option>
					 <option value="77">Ingeniero T�cnico de Telecomunicaci�n, espc. en Telem�tica</option>
					 <option value="78">Grado en Ingenier�a Electr�nica de Comunicaciones</option>
					 <option value="79">Grado en Ingenier�a de Sistemas de Telecomunicaci�n</option>
					 <option value="80">Grado en Ingenier�a de Sonido e Imagen</option>
					 <option value="81">Grado en Ingenier�a Telem�tica</option>
					 <option value="145">M�ster Oficial</option>
					 <option value="146">M�ster Habilitante</option>
					 <option value="147">M�ster T�tulo Propio</option>
					 <option value="174">Doctorado Ingenier�a de Sistemas y Servicios para las Sociedad de la Informaci�n</option>
					 <option value="268">M�ster Universitario en Ing. de Sist. y Serv. para la Sociedad de la Informaci�n</option>
					 <option value="269">M�ster Universitario en Ingenier�a Ac�stica</option>
					 <option value="431">Programa Movilidad ETS de Ingenier�a y Sistemas de Telecomunicaci�n</option>
					 <option value="435">Eit Digital Track On Internet Technology And Architecture</option>
					 <option value="469">Master Universitario en Internet de las Cosas / Internet of Things</option>
					 <option value="474">Doble Grado en Ing.electronica de Comunicaciones y en Ing.telematica</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Inform�ticos">
					 <option value="46">Grado en Matem�ticas e Inform�tica</option>
					 <option value="100">M�ster Oficial</option>
					 <option value="121">M�ster Oficial</option>
					 <option value="122">M�ster Habilitante</option>
					 <option value="168">Doctorado F. Inform�tica</option>
					 <option value="207">Grado en Ingenier�a Inform�tica</option>
					 <option value="301">M�ster Universitario en Ingenier�a del Software</option>
					 <option value="302">M�ster Universitario en Ingenier�a Inform�tica</option>
					 <option value="303">M�ster Universitario en Inteligencia Artificial</option>
					 <option value="304">M�ster Universitario en Software y Sistemas</option>
					 <option value="317">Ingeniero en Inform�tica</option>
					 <option value="353">EIT Digital Master's Programme in Data Science</option>
					 <option value="395">Alumnos Programas Movilidad</option>
					 <option value="419">Consultoria y Gestion de Empresas</option>
					 <option value="422">Master EIT Digital in Human Computer Interaction and Design</option>
					 <option value="423">Doble Grado en Ingenier�a Inform�tica y ADE</option>
					 <option value="490">Master Universitario en Ciencia de Datos</option>
					 <option value="492">M�ster Interuniversitario en M�todos Formales en Ingenier�a Inform�tica</option>
					 <option value="493">Master Universitario en Innovaci�n Digital</option>
				 </optgroup>
				 <optgroup label="E.T.S. de Ingenier�a de Sistemas Inform�ticos">
					 <option value="44">Ingeniero T�cnico en Inform�tica</option>
					 <option value="82">Ingeniero T�cnico en Inform�tica de Gesti�n</option>
					 <option value="83">Ingeniero T�cnico en Inform�tica de Sistemas</option>
					 <option value="84">Grado en Ingenier�a de Computadores</option>
					 <option value="85">Grado en Ingenier�a del Software</option>
					 <option value="123">M�ster Titulo Propio</option>
					 <option value="127">M�ster Oficial</option>
					 <option value="128">M�ster Habilitante</option>
					 <option value="129">M�ster Titulo Propio</option>
					 <option value="155">Doctorado EU Inform�tica</option>
					 <option value="196">Programa ERASMUS ETS de Ingenier�a y Sistemas Inform�ticos.</option>
					 <option value="222">Grado en Sistemas de Informacion</option>
					 <option value="261">Mu en Desarrollo de Aplicaciones y Servicios para Dispositivos M�viles por la Universidad</option>
					 <option value="262">M�ster Universitaro en Ciencia y Tecnolog�as de la Computaci�n</option>
					 <option value="263">M�ster Universitario en Ingenier�a Web</option>
					 <option value="264">M�ster Universitario en Software de Sistemas Distribuidos y Empotrados</option>
					 <option value="391">Master en Dise�o y Desarrollo de Videojuegos</option>
					 <option value="475">Doble Grado Ingenieria Computadores y Tecnologias para Sociedad Informacion</option>
					 <option value="476">Doble Grado Ingenieria de Software y Tecnologias para Sociedad Informacion</option>
					 <option value="513">Grado en Tecnolog�as para la Sociedad de la Informacion</option>
				 </optgroup>
				 <optgroup label="E.T.S.I. Topograf�a, Geodesia y Cartograf�a">
					 <option value="41">Ingeniero T�cnico en Topograf�a</option>
					 <option value="42">Ingeniero en Geodesia y Cartograf�a</option>
					 <option value="115">M�ster Oficial</option>
					 <option value="116">M�ster Habilitante</option>
					 <option value="117">M�ster Titulo Propio</option>
					 <option value="165">Doctorado Topograf�a</option>
					 <option value="180">M�ster en Ingenier�a en Geodesia y Cartograf�a</option>
					 <option value="197">Programa Movilidad ETSI Topograf�a, Geodisa y Cartograf�a</option>
					 <option value="202">Grado en Ingenier�a Geom�tica y Topograf�a</option>
					 <option value="306">M�ster Universitario en Ingenier�a Geod�sica y Cartograf�a</option>
					 <option value="508">Grado en Ingenier�a Geom�tica</option>
					 <option value="509">Grado en Ingenier�a de las Tecnolog�as de la Informaci�n Geoespacial</option>
					 <option value="510">M�ster Oficial en An�lisis del Riesgo S�smico mediante Tecnolog�as Geoespaciales</option>
				 </optgroup>
				 <optgroup label="Facultad de Ciencias de la Actividad F�sica y del Deporte (INEF)">
					 <option value="47">Licenciado en CC. de la Actividad F�sica y del Deporte</option>
					 <option value="48">Grado en Ciencias de la Actividad F�sica y del Deporte</option>
					 <option value="118">M�ster Oficial</option>
					 <option value="119">M�ster Habilitante</option>
					 <option value="120">M�ster Titulo Propio</option>
					 <option value="177">Doctorado INEF</option>
					 <option value="205">Programa Movilidad Facultad de Ciencias de la Actividad F�sica y del Deporte</option>
					 <option value="244">M�ster Universitario en Direcci�n de Org. e Inst. de la Actividad F�sica y del Deporte</option>
					 <option value="245">M�ster Universitario en Ciencias de la Actividad F�sica y del Deporte</option>
					 <option value="397">Master en entrenamiento personal</option>
					 <option value="444">PREVENCION, INTERVENCION Y RECUPERACION FUNCIONAL DE LESIONES EN LA ACTIVID</option>
					 <option value="486">Grado en Ciencias de la Actividad F�sica y del Deporte</option>
				 </optgroup>
				 <optgroup label="Centro Superior de Dise�o de Moda de Madrid">
					 <option value="217">T�tulo de Ense�anzas Art�sticas Superiores</option>
					 <option value="361">Grado en Dise�o de Moda</option>
					 <option value="432">Programa Movilidad Centro Superior de Dise�o de Moda de Madrid</option>
					 <option value="534">Tecnolog�a e Innovaci�n en Dise�o de Moda</option>
					 <option value="535">M�ster Universitario en Tecnolog�a e Innovaci�n en Dise�o de Moda</option>
				 </optgroup>
				 <optgroup label="Escuela Internacional de Doctorado de la UPM">
					 <option value="487">DOCTORADO EN INNOVACION TECNOLOGICA EN EDIFICACION</option>
					 <option value="491">Doctorado en Software Sistemas y Computaci�n de la ETSI Inform�ticos</option>
					 <option value="495">DOCTORADO EN PATRIMONIO ARQUITECTONICO</option>
					 <option value="496">DOCTORADO EN INGENIERIA DE ESTRUCTURAS, CIMENTACIONES Y MATERIALES</option>
					 <option value="497">DOCTORADO EN INGENIERIA DE PRODUCCION Y DISE�O INDUSTRIAL</option>
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
					 <option value="528">Doctorado en Arquitectura, Dise�o, Moda &amp; Sociedad</option>
					 <option value="530">DOCTORADO EN COMUNICACION ARQUITECTONICA</option>
					 <option value="536">DOCTORADO EN CIENCIAS Y TECNOLOGIAS DE LA COMPUTACION PARA SMART CITIES</option>
					 <option value="539">DOCTORADO EN INGENIERIA AMBIENTAL, QUIMICA Y DE LOS MATERIALES</option>
				 </optgroup>
				 <optgroup label="EPES">
				 </optgroup>
				 <optgroup label="Centro Virtual Master Universitario en Eficiencia Energ�tica en la Edificaci�n, Industria y Transporte">
					 <option value="344">Master en Eficiencia Energ�tica en la Edificaci�n, la Industria y el Transporte</option>
				 </optgroup>
				 <optgroup label="Instituto Universitario de Investigaci�n de Autom�viles">
					 <option value="404">M�ster en Ingenier�a de Automoci�n</option>
					 <option value="405">M�ster en Ingenier�a de los Veh�culos H�bridos y El�ctricos</option>
					 <option value="450">Master en Ingenier�a de veh�culos aut�nomos y conectados</option>
				 </optgroup>
				 <optgroup label="MASTER UNIVERSITARIO EN CIBERSEGURIDAD (MUCS)">
					 <option value="438">M�ster Universitario en Ciberseguridad</option>
				 </optgroup>
				 <optgroup label="Rectorado">
					 <option value="433">Especializaci�n en Gestion de Empresas</option>
					 <option value="470">LIDERAZGO INTERNACIONAL EN INGENIER�A Y ARQUITECTURA</option>
					 <option value="480">EXPERTO EN ORGANIZACIONES INTELIGENTES HACIA LA TRANSFORMACION DIGITAL</option>
					 <option value="488">Especializaci�n en Organizaciones Inteligentes hacia la Trasformacion Digital</option>
				 </optgroup>
				 <optgroup label="ICE">
					 <option value="221">Master Universitario en formaci�n del Profesorado de Educaci�n Secundaria, Bachillerato y Formaci�n Profesonal</option>
					 <option value="310">Formaci�n del Profesorado en E.S.O. y Bachillerato (Esp. Educaci�n F�sica)</option>
					 <option value="311">Formaci�n del Profesorado en E.S.O. y Bachillerato (Esp. Expresi�n Gr�fica))</option>
					 <option value="312">Formaci�n del Profesorado en E.S.O. y Bachillerato (Esp. Tecnolog�a)</option>
					 <option value="319">M�ster en Gesti�n y Direcci�n Hotelera</option>
				 </optgroup>
				 <optgroup label="Centro Virtual: M�ster en Energ�as Renovables y Medio Ambiente">
					 <option value="331">M�ster en Energ�as Renovables y Medio Ambiente</option>
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
			<span style="color:red; font-size: 0.8rem">Rellenar s�lo en caso de haber finalizado los estudios</span>
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
    
    