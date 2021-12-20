<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>
		
<!DOCTYPE html>
<html lang="es">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
	<title><tiles:insertAttribute name="title" ignore="true"/></title>
	
	<!-- Favicon-->
    <link rel="shortcut icon" href='<spring:url value="/static/imagenes/fav.png"/>' >
	
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href='<spring:url value="/static/css/bootstrap.4.5.min.css" />' media="all" />
	<link rel="stylesheet" type="text/css" href='<spring:url value="/static/css/mdb.min.css" />' media="all" />
	<link rel="stylesheet" type="text/css" href='<spring:url value="/static/css/estilo.css" />' media="all" />
	<!-- FONTAWESOME 5.11 -->
	<link rel="stylesheet" type="text/css" href='<spring:url value="/static/css/all.min.css"/>' media="all" />
	

	<!-- SCRIPTS -->
	<script type="text/javascript" src='<spring:url value="/static/js/jquery-3.3.1.min.js"/>' ></script>
	

</head>
<body>


	<header>
		<tiles:insertAttribute name="header" />
	</header>


	<main>
		<div class="container">
			<tiles:insertAttribute name="body" />			
		</div>
	</main>

	<br><br>

	<footer id="pie-pagina" class="page-footer fixed-bottom">
		<tiles:insertAttribute name="footer" />
	</footer>

	<!-- SCRIPTS -->
	<script type="text/javascript" src='<spring:url value="/static/js/popper.min.js"/>' defer></script>
	<script type="text/javascript" src='<spring:url value="/static/js/bootstrap.min.js"/>' defer></script>
	<script type="text/javascript" src='<spring:url value="/static/js/mdb.min.js"/>' defer></script>
	
</body>
</html>