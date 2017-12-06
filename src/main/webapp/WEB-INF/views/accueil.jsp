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
	<a href="client/home">Vers Client</a>
	<a href="agent/home">Vers Agent</a>

	<div class="row">
		<div class="col-sm-6 col-md-4" style="display:flex; justify-content:space-around;">
			<c:forEach var="voyage" items="${listeVoyages}">
				<div class="thumbnail">
					<img src="..." alt="...">
					<div class="caption">
						<h3>${voyage.pays}</h3>
						<p>${voyage.description}</p>
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