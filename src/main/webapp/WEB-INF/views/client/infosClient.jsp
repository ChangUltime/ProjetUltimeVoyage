<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Infos Client</title>
<%@ include file="../resourceIncludes.jsp"%>
</head>
<body>

	<div id="clientHeader">
		<%@ include file="headerClient.jsp"%>
	</div>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li><a
				href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
			<li ><a href="${pageContext.request.contextPath}/client/home">Tableau de Bord</a></li>
			<li  class="active"><a href="${pageContext.request.contextPath}/client/infos">Infos</a></li>
			<li><a href="${pageContext.request.contextPath}/client/dossiers">Dossiers</a></li>
			<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
		</ul>
	</div>
</nav>
	<div id="clientContent">
	<a href="${pageContext.request.contextPath}/client/goToModifClient" style="color: #D60D6B; margin: 20px; font-size: 25px">Modifier</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Identifiant</th>
					<th>Civilite</th>
					<th>Nom</th>
					<th>Adresse</th>
					<th>Telephone</th>
				</tr>
			</thead>

			<tbody>
					<tr>
						<td>${sessionClient.id}</td>
						<td>${sessionClient.identifiant}</td>
						<td>${sessionClient.civilite}</td>
						<td>${sessionClient.nom}</td>
						<td>${sessionClient.adresse}</td>
						<td>${sessionClient.tel}</td>
					</tr>
			</tbody>
		</table>
		 
		
	</div>

</body>
</html>