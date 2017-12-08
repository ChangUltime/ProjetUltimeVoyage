<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<%@ include file="resourceIncludes.jsp"%>

</head>
<body>
	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>
	<nav class="navbar navbar-inverse">
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
				
				<li><a href="${pageContext.request.contextPath}/agent/voyages">Voyages</a></li>
				<li><a
					href="${pageContext.request.contextPath}/agent/dossiers">Dossiers</a></li>
				<li  class="active"><a
					href="${pageContext.request.contextPath}/agent/listeClients">Voyageurs</a></li>
				<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div id="agentContent">

		<a href="${pageContext.request.contextPath}/agent/addFormClient" style="color: #D60D6B; margin: 20px; font-size: 25px">Ajouter Client</a>
		<a href="${pageContext.request.contextPath}/agent/updateFormClient" style="color: #D60D6B; margin: 20px; font-size: 25px">Modifier Client</a>

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
				<c:forEach var="client" items="${clientList}">
					<tr>
						<td>${client.id}</td>
						<td>${client.identifiant}</td>
						<td>${client.civilite}</td>
						<td>${client.nom}</td>
						<td>${client.adresse}</td>
						<td>${client.tel}</td>
						<td><a
							href="${pageContext.request.contextPath}/agent/delClientByLink/${client.id}">Supprimer</a>
							| <a
							href="${pageContext.request.contextPath}/agent/updateClientByLink?pId=${client.id}">Modifier</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>