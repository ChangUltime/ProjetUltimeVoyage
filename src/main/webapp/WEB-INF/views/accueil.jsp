<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/views/resourceIncludes.jsp"%>
<script src='<c:url value="/resources/js/searchBar2.js"/>'></script>
<title>Page d'accueil</title>
</head>
<body>
	<div style="position: sticky; top:0">
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
			<input autocomplete="on" type="text" id="searchVoyage" onkeyup="searchVoyagePays()" class="form-control" placeholder="Rechercher"
				style="width: 200px; position: relative; top: 6px">
			<button id="croissant" onclick="orderedPrice()"
				class="btn btn-warning"
				style="max-height: 40px; position: relative; top: 5px; left: 5px">Prix
				Croissant</button>
			<button id="decroissant" onclick="disorderedPrice()"
				class="btn btn-warning"
				style="max-height: 40px; position: relative; top: 5px; left: 5px">Prix
				Decroissant</button>
		</div>
	</div>


	<div class="row">
		<div id="voy"
			style="display: flex; flex-direction: row; flex-wrap: wrap; justify-content: space-around;">
			<c:forEach var="voyage" items="${listeVoyages}">
				<div class="thumbnail filter ${voyage.pays}"
					style="flex-basis: 28%; background-color: rgba(254, 254, 254, 0.85)">
					<img
						src="${pageContext.request.contextPath}/photoProd?id=${voyage.id}"
						alt="" width="500px">
					<div class="caption">
						<h2
							style="color: #D60D6B; font-family: 'Lobster', cursive; line-height: 8px">${voyage.pays}</h2>
						<h5 style="line-height: 25px; text-align: justify; font-family: 'Varela Round', sans-serif; font-size: 16px">${voyage.description}</h5>
						<h4 style="text-align: right; line-height: 5px">
							<del>${voyage.prixInitial} euros</del>
						</h4>
						<h1 style="text-align: right; color: red; line-height: 8px">
							<span>${voyage.prixBase}</span> euros
						</h1>
						<p>
							<a href="dossier/options/${voyage.id}" class="btn btn-warning"
								role="button">Reserver</a> <a href="#" class="btn btn-default"
								role="button" data-toggle="modal"
								data-target="#info${voyage.id}" data-backdrop="false">Infos</a>
						</p>
					</div>
					<div class="modal-fade" id="info${voyage.id}" tabindex="-1"
						role="dialog" style="display: none; position: fixed; top:20%; left:30%;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header"
									style="color: #D60D6B; font-family: 'Lobster', cursive;">
									Informations concernant ce voyage :
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">X</button>
								</div>
								<div class="modal-body">
									<h2 style="color: #D60D6B; font-family: 'Lobster', cursive;">${voyage.pays}</h2>
									<h5>${voyage.continent}</h5>
									<h5>${voyage.formule}</h5>
									<h4 style="color: red">A partir de ${voyage.prixBase}
										EUROS</h4>
									<br />
									<h5>${voyage.description}</h5>
									<h5>Nombre de places disponibles : ${voyage.places}</h5>
									<h5>
										Date de départ :
										<fmt:formatDate type="time" value="${voyage.dateDepart}"
											pattern="dd/MM/yyyy" />
										Heure :
										<fmt:formatDate type="time" value="${voyage.heureDepart}"
											pattern="HH:mm" />
									</h5>
									<h5>
										Date de retour :
										<fmt:formatDate type="time" value="${voyage.dateRetour}"
											pattern="dd/MM/yyyy" />
										Heure :
										<fmt:formatDate type="time" value="${voyage.heureRetour}"
											pattern="HH:mm" />
									</h5>
									<div id="myCarousel${voyage.id}" class="carousel slide"
										data-ride="carousel" width="300px"
										style="position: absolute; right: 10px; top: 20px">
										<!-- Indicators -->
										<ol class="carousel-indicators">
											<li data-target="#myCarousel${voyage.id}" data-slide-to="0"
												class="active"></li>
											<li data-target="#myCarousel${voyage.id}" data-slide-to="1"></li>
											<li data-target="#myCarousel${voyage.id}" data-slide-to="2"></li>
										</ol>

										<!-- Wrapper for slides -->
										<div class="carousel-inner">
											<div class="item active">
												<img
													src="${pageContext.request.contextPath}/photoProd?id=${voyage.id}"
													alt="" width="300px">
											</div>

											<div class="item">
												<img
													src="${pageContext.request.contextPath}/photoProd2?id=${voyage.id}"
													alt="" width="300px">
											</div>

											<div class="item">
												<img
													src="${pageContext.request.contextPath}/photoProd3?id=${voyage.id}"
													alt="" width="300px">
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</c:forEach>
		</div>
	</div>


</body>
</html>