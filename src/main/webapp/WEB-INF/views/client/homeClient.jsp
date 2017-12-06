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