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
<nav class="navbar navbar-inverse">
	<div>
		<ul class="nav navbar-nav">
			<li><a
				href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
			
			<li><a href="${pageContext.request.contextPath}/agent/voyages">Voyages</a></li>
			<li class="active"><a href="${pageContext.request.contextPath}/agent/dossiers">Dossiers</a></li>
			<li><a
				href="${pageContext.request.contextPath}/agent/listeClients">Voyageurs</a></li>
			<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
		</ul>
	</div>
</nav>
<div id="agentContent">

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
			<c:forEach var="dossier" items="${listeDossiers}">
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