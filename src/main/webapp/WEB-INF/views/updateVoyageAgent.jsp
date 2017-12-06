<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire modification voyage</title>
<%@ include file="resourceIncludes.jsp"%>
</head>
<body>

	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>

	<div id="agentContent">

		<form:form class="form-horizontal" method="POST"
			modelAttribute="voyageUpdate" action="${pageContext.request.contextPath}/agent/modifVoyage">

			<div class="form-group">
				<label for="inputId" class="col-sm-2 control-label">ID</label>
				<div class="col-sm-7">
					<form:input path="id" class="form-control" id="inputId"
						placeholder="ID" />
					<form:errors path="id" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputContinent" class="col-sm-2 control-label">Continent</label>
				<div class="col-sm-7">
					<form:input path="continent" class="form-control"
						id="inputContinent" placeholder="Contient" />
					<form:errors path="continent" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPays" class="col-sm-2 control-label">Pays</label>
				<div class="col-sm-7">
					<form:input path="pays" class="form-control" id="inputPays"
						placeholder="Pays" />
					<form:errors path="pays" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputDateD" class="col-sm-2 control-label">Date
					de départ</label>
				<div class="col-sm-7">
					<form:input type="date" path="dateDepart" class="form-control" id="inputDateD"
						placeholder="Date de départ"  />
					<form:errors path="dateDepart" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputHeureD" class="col-sm-2 control-label">Heure
					de départ</label>
				<div class="col-sm-7">
					<form:input type="time" path="heureDepart" class="form-control"
						id="inputHeureD" placeholder="Heure de départ" />
					<form:errors path="heureDepart" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputDateR" class="col-sm-2 control-label">Date
					de retour</label>
				<div class="col-sm-7">
					<form:input type="date" path="dateRetour" class="form-control" id="inputDateR"
						placeholder="Date de retour" />
					<form:errors path="dateRetour" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputHeureR" class="col-sm-2 control-label">Heure
					de retour</label>
				<div class="col-sm-7">
					<form:input type="time" path="heureRetour" class="form-control"
						id="inputHeureR" placeholder="Heure de retour" />
					<form:errors path="heureRetour" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputFormule" class="col-sm-2 control-label">Formule</label>
				<div class="col-sm-7">
					<form:input path="formule" class="form-control" id="inputFormule"
						placeholder="Formule" />
					<form:errors path="formule" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputHebergement" class="col-sm-2 control-label">Hébergement</label>
				<div class="col-sm-7">
					<form:input path="hebergement" class="form-control"
						id="inputHebergement" placeholder="Hébergement" />
					<form:errors path="hebergement" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPrix" class="col-sm-2 control-label">Prix</label>
				<div class="col-sm-7">
					<form:input path="prixBase" class="form-control" id="inputPrix"
						placeholder="Prix" />
					<form:errors path="prixBase" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPlaces" class="col-sm-2 control-label">Nombre
					de places</label>
				<div class="col-sm-7">
					<form:input path="places" class="form-control" id="inputPlaces"
						placeholder="Nombre de places" />
					<form:errors path="places" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPlanning" class="col-sm-2 control-label">Planning</label>
				<div class="col-sm-7">
					<form:input path="description" class="form-control"
						id="inputPlanning" placeholder="Planning" />
					<form:errors path="description" cssStyle="color: red" />
				</div>
			</div>

			<div class="col-sm-2">
				<input type="submit" class="btn btn-primary" value="Modifier" />
			</div>
		</form:form>

		<p style="color: red; text-align: center">${message}</p>


	</div>

</body>
</html>