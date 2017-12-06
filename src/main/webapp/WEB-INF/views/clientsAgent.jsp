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
	<div id="agentContent" align="center">
		
		<h1>Liste clients</h1>
		
		<a href="${pageContext.request.contextPath}/agent/updateFormClient">Modif</a>
		<a href="${pageContext.request.contextPath}/agent/addFormClient">Ajouter</a>
		
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
						<td><a href="${pageContext.request.contextPath}/agent/delClientByLink/${client.id}">Supprimer</a> | <a href="${pageContext.request.contextPath}/agent/updateClientByLink?pId=${client.id}">Modifier</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>