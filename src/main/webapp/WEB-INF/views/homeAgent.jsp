<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Agent</title>

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
				<li><a href="${pageContext.request.contextPath}/agent/dossiers">Dossiers</a></li>
				<li><a
					href="${pageContext.request.contextPath}/agent/listeClients">Voyageurs</a></li>
				<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div id="agentContent">
		<h2 style="margin: 10px; color: #D60D6B; background-color: rgba(255, 255, 255, 0.8); text-align: center">PROMOTIONS EN COURS SUR NOTRE SITE</h2>
		<div class="row">
			<div id="voy"
				style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: space-around;">
				<c:forEach var="voyage" items="${listeVoyages}">
					<div class="thumbnail"
						style="flex-basis: 22%; background-color: rgba(254, 254, 254, 0.85)">
						<img
							src="${pageContext.request.contextPath}/photoProd?id=${voyage.id}"
							alt="" width="500px">
						<div class="caption">
							<h2
								style="color: #D60D6B; font-family: 'Lobster', cursive; line-height: 8px">${voyage.pays}</h2>
							<h5
								style="line-height: 15px; text-align: justify; font-family: 'Varela Round', sans-serif; font-size: 12px">${voyage.description}</h5>
							<h4 style="text-align: right; line-height: 5px">
								<del>${voyage.prixInitial} euros</del>
							</h4>
							<h2 style="text-align: right; color: red; line-height: 8px">
								<span>${voyage.prixBase}</span> euros
							</h2>
						</div>


					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>