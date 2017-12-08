<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Client</title>

<%@ include file="../resourceIncludes.jsp"%>

</head>
<body>
	<div id="clientHeader">
		<%@ include file="headerClient.jsp"%>
	</div>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
				<li class="active"><a
					href="${pageContext.request.contextPath}/client/home">Tableau
						de Bord</a></li>
				<li><a href="${pageContext.request.contextPath}/client/infos">Infos</a></li>
				<li><a
					href="${pageContext.request.contextPath}/client/dossiers">Dossiers</a></li>
				<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div id="clientContent">


		<h2 style="color: #D60D6B; margin: 20px; font-size: 30px">Prochains
			voyages</h2>
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


		<h2 style="color: #D60D6B; margin: 20px; font-size: 30px">Dossier
			en attente</h2>
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