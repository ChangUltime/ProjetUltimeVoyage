<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<%@ include file="resourceIncludes.jsp" %>

</head>
<body>
<div id="agentHeader">
	<%@ include file="headerAgent.jsp" %>
</div>
<div id="agentContent">
Des Voyages
	
	<div align="center">
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

			<c:forEach var="voyage" items="${listeVoyages}">
				<tr>
					<td>${voyage.id}</td>
					<td>${voyage.continent}</td>
					<td>${voyage.pays}</td>
					<td>${voyage.dateDepart}</td>
					<td>${voyage.heureDepart}</td>
					<td>${voyage.dateRetour}</td>
					<td>${voyage.heureRetour}</td>
					<td>${voyage.formule}</td>
					<td>${voyage.hebergement}</td>
					<td>${voyage.prixBase}</td>
					<td>${voyage.places}</td>
					<td>${voyage.description}</td>
					<td><a href="${pageContext.request.contextPath}/agent/supprimVoyageLien/${voyage.id}">Supprimer</a> / Modifier</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</div>

</body>
</html>