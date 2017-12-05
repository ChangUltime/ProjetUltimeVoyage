<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil Agent</title>

<!-- ========================================================== -->
<!-- ========================= JQuery ========================= -->
<!-- ========================================================== -->
<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>

<!-- =========================================================== -->
<!-- ======================== Bootstrap ======================== -->
<!-- =========================================================== -->

<!-- Bootstrap CSS -->
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" />

<!-- Bootstrap Theme CSS -->
<link href="<c:url value="/resources/css/bootstrap-theme.css" />"
	rel="stylesheet" />

<!-- Bootstrap Js -->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>

</head>
<body>

	<h1>Gestion</h1>

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
					<td><a href="${pageContext.request.contextPath}/admin/supprimVoyageLien/${voyage.id}">Supprimer</a> / Modifier</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>