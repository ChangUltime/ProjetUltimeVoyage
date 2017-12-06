<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/views/resourceIncludes.jsp"%>
<title>Page d'accueil</title>
</head>
<body>
<div style="height: 110px; background-color: #D60D6B; margin-bottom: 20px ">
	<a href="client/home">Vers Client</a>
	<a href="agent/home">Vers Agent</a>
</div>
<img src="resources/css/images/logo.png" style="position: absolute; top: 2px; left:30%">

	<div class="row">
		<div style="display:flex; flex-direction:row; flex-wrap:wrap; justify-content:space-around; ">
			<c:forEach var="voyage" items="${listeVoyages}">
				<div class="thumbnail" style="flex-basis:28% ; background-color: rgba(254, 254, 254, 0.85)">
					<img src="${pageContext.request.contextPath}/photoProd?id=${voyage.id}" alt="" width="500px">
					<div class="caption">
						<h3 style="color: #D60D6B">${voyage.pays}</h3>
						<h5>${voyage.description}</h5>
						<h4>A partir de ${voyage.prixBase} EUROS</h4>
						<p>
							<a href="#" class="btn btn-warning" role="button">Reserver</a> <a
								href="#" class="btn btn-default" role="button">Infos</a>
						</p>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>

</body>
</html>