<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="resourceIncludes.jsp"%>
</head>
<body>

<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>
	
	<div id="agentContent">

		<form:form class="form-horizontal" method="POST"
			modelAttribute="voyageAdd" action="ajouteVoyage">

			<div class="form-group">
				<label for="inputContinent" class="col-sm-2 control-label">Continent</label>
				<div class="col-sm-7">
					<form:input path="continent" class="form-control"
						id="inputContinent" placeholder="Continent" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPays" class="col-sm-2 control-label">Pays</label>
				<div class="col-sm-7">
					<form:input path="pays" class="form-control" id="inputPays"
						placeholder="Pays" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputDateD" class="col-sm-2 control-label">Date
					de départ</label>
				<div class="col-sm-7">
					<form:input type="date" path="dateDepart" class="form-control" id="inputDateD"
						placeholder="Date de départ"  />
				</div>
			</div>

			<div class="form-group">
				<label for="inputHeureD" class="col-sm-2 control-label">Heure
					de départ</label>
				<div class="col-sm-7">
					<form:input type="time" path="heureDepart" class="form-control"
						id="inputHeureD" placeholder="Heure de départ" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputDateR" class="col-sm-2 control-label">Date
					de retour</label>
				<div class="col-sm-7">
					<form:input type="date" path="dateRetour" class="form-control" id="inputDateR"
						placeholder="Date de retour" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputHeureR" class="col-sm-2 control-label">Heure
					de retour</label>
				<div class="col-sm-7">
					<form:input type="time" path="heureRetour" class="form-control"
						id="inputHeureR" placeholder="Heure de retour" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputFormule" class="col-sm-2 control-label">Formule</label>
				<div class="col-sm-7">
					<form:input path="formule" class="form-control" id="inputFormule"
						placeholder="Formule" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputHebergement" class="col-sm-2 control-label">Hébergement</label>
				<div class="col-sm-7">
					<form:input path="hebergement" class="form-control"
						id="inputHebergement" placeholder="Hébergement" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPrix" class="col-sm-2 control-label">Prix</label>
				<div class="col-sm-7">
					<form:input path="prixBase" class="form-control" id="inputPrix"
						placeholder="Prix" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPlaces" class="col-sm-2 control-label">Nombre
					de places</label>
				<div class="col-sm-7">
					<form:input path="places" class="form-control" id="inputPlaces"
						placeholder="Nombre de places" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPlanning" class="col-sm-2 control-label">Planning</label>
				<div class="col-sm-7">
					<form:input path="description" class="form-control"
						id="inputPlanning" placeholder="Planning" />
				</div>
			</div>

			<div class="col-sm-2">
				<input type="submit" class="btn btn-primary" value="Ajouter" />
			</div>
		</form:form>

		<p style="color: red; text-align: center">${message}</p>


	</div>
	
</body>
</html>