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
	<div style="position: sticky; top: 0;">
		<div style="height: 110px; background-color: #D60D6B">
			<a href="client/home"
				style="color: white; position: absolute; right: 10px">Je suis
				déjà Client</a> <br /> <a href="agent/home"
				style="color: white; position: absolute; right: 10px">Je suis un
				Agent</a> <br /> <br /> <a href="mailto:contact@rainbowtravels.com"
				style="color: white; position: absolute; right: 10px">NOUS
				ECRIRE</a> <img src="resources/css/images/logo.png"
				style="position: absolute; top: 2px; left: 30%">
		</div>
		<div
			style="height: 50px; background-color: white; margin-bottom: 20px; display: flex">
			<h3 style="margin: 10px; color: #D60D6B">Affiner votre recherche
				:</h3>
			<input type="text" class="form-control" placeholder="Rechercher"
				style="width: 200px; position: relative; top: 6px">
		</div>
	</div>


	<div class="row">
		<div
			style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: space-around;">
			<c:forEach var="voyage" items="${listeVoyages}">
				<div class="thumbnail"
					style="flex-basis: 28%; background-color: rgba(254, 254, 254, 0.85)">
					<img
						src="${pageContext.request.contextPath}/photoProd?id=${voyage.id}"
						alt="" width="500px">
					<div class="caption">
						<h2 style="color: #D60D6B; font-family: 'Lobster', cursive;">${voyage.pays}</h2>
						<h5>${voyage.description}</h5>
						<h4>A partir de ${voyage.prixBase} EUROS</h4>
						<p>
							<a href="#" class="btn btn-warning" role="button">Reserver</a> <a
								href="#" class="btn btn-default" role="button"
								data-toggle="modal" data-target="#info">Infos</a>
						</p>
					</div>
				</div>
				<div class="modal-fade" id="info" tabindex="-1" role="dialog"
					style="display: none; position: absolute;">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">X</button>
							</div>
							<div class="modal-body">blabla</div>
						</div>
					</div>
				</div>

			</c:forEach>

		</div>
	</div>


</body>
</html>