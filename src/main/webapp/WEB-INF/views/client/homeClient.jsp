<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<%@ include file="../resourceIncludes.jsp" %>

</head>
<body>
<div id="clientHeader">
	<%@ include file="headerClient.jsp" %>
</div>
<div id="clientContent">

	<h2>Prochain voyage</h2>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Etat</th>
				<th>Prix</th>
				<th>Paiement</th>
				<th>Accompagnants</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dossier" items="${prochainsDossiers}">
			<!-- PROCHAINS DOSSIERS==DOSSIERS DONT LA DATE EST APRES LA DATE DU JOUR -->
				<tr>
					<td>${dossier.id}</td>
					<td>${dossier.etat}</td>
					<td>${dossier.prixFinal}</td>
					<td>${dossier.datePaiement}</td>
					<td>${dossier.nbAccompagnants}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<h2>Dossier en attente</h2>
	
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Etat</th>
				<th>Prix</th>
				<th>Paiement</th>
				<th>Accompagnants</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dossier" items="${attenteDossiers}">
				<tr>
					<td>${dossier.id}</td>
					<td>${dossier.etat}</td>
					<td>${dossier.prixFinal}</td>
					<td>${dossier.datePaiement}</td>
					<td>${dossier.nbAccompagnants}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>