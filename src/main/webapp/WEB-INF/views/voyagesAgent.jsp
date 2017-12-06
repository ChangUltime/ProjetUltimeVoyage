<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<%@ include file="resourceIncludes.jsp"%>
<script src='<c:url value="/resources/js/searchBar.js"/>'></script>

</head>
<body>
	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>
	<div id="agentContent">
		Des Voyages

		<div align="center">

			<!-- 			<input type="text" id="searchByPays" onkeyup="searchPays()" -->
			<!-- 				placeholder="Pays ..."> -->

			<select onchange="searchPays()" id="searchByPays">
				<option>Recherche par pays</option>
				<c:forEach items="${listeVoyages}" var="voyage">
					<option value="${voyage.pays}">${voyage.pays}</option>
				</c:forEach>
			</select>

			<table class="table table-bordered">
				<tr>
					<th>ID</th>
					<th>Continent</th>
					<th>Pays</th>
					<th>Date de départ</th>
					<th>Heure de départ</th>
					<th>Date de retour</th>
					<th>Heure de retour</th>
					<th>Formule</th>
					<th>Hébergement</th>
					<th>Prix de base</th>
					<th>Nombre de places</th>
					<th>Planning</th>
					<th>Opérations</th>
				</tr>

				<tbody id="tableVoyages">
					<c:forEach var="voyage" items="${listeVoyages}">
						<tr>
							<td>${voyage.id}</td>
							<td>${voyage.continent}</td>
							<td>${voyage.pays}</td>
							<td><fmt:formatDate type="time" value="${voyage.dateDepart}"
									pattern="dd/MM/yyyy" /></td>
							<td><fmt:formatDate type="time"
									value="${voyage.heureDepart}" pattern="HH:mm" /></td>
							<td><fmt:formatDate type="time" value="${voyage.dateRetour}"
									pattern="dd/MM/yyyy" /></td>
							<td><fmt:formatDate type="time"
									value="${voyage.heureRetour}" pattern="HH:mm" /></td>
							<td>${voyage.formule}</td>
							<td>${voyage.hebergement}</td>
							<td>${voyage.prixBase}</td>
							<td>${voyage.places}</td>
							<td>${voyage.description}</td>
							<td><a
								href="${pageContext.request.contextPath}/agent/supprimVoyageLien/${voyage.id}">Supprimer</a>
								/ <a
								href="${pageContext.request.contextPath}/agent/modifViaLien/?pId=${voyage.id}">Modifier</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

</body>
</html>