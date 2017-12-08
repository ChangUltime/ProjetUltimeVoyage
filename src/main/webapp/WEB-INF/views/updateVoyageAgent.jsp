<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire modification voyage</title>
<%@ include file="resourceIncludes.jsp"%>

<script src='<c:url value="/resources/js/searchBar.js"/>'></script>
<script src='<c:url value="/resources/js/validationDate.js"/>'></script>


<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

</head>
<body>

	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>

	<form:form class="form-horizontal" method="POST"
		modelAttribute="voyageUpdate" enctype="multipart/form-data"
		action="${pageContext.request.contextPath}/agent/modifVoyage">

		<div class="form-group">
			<label for="inputImage1" class="col-sm-2 control-label">Image</label>
			<div class="col-sm-7">
				<input id="inputImage1" type="file" name="file1" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputImage2" class="col-sm-2 control-label">Image</label>
			<div class="col-sm-7">
				<input type="file" name="file2" id="inputImage2"/>
			</div>
		</div>

		<div class="form-group">
			<label for="inputImage3" class="col-sm-2 control-label">Image</label>
			<div class="col-sm-7">
				<input type="file" name="file3" id="inputImage3" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputId" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-7">
				<form:input path="id" class="form-control" id="inputId"
					placeholder="ID" readonly="true" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputContinent" class="col-sm-2 control-label">Continent</label>
			<div class="col-sm-7">
				<form:input path="continent" class="form-control"
					id="inputContinent" placeholder="Contient" pattern="[a-zA-Z ]+"
					title="Caractères autorisés : A-Z a-z" required="required" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputPays" class="col-sm-2 control-label">Pays</label>
			<div class="col-sm-7">
				<form:input path="pays" class="form-control" id="inputPays"
					placeholder="Pays" pattern="[a-zA-Z ]+"
					title="Caractères autorisés : A-Z a-z" required="required" />
			</div>
		</div>
		<div class="form-group">
			<label for="inputDateD" class="col-sm-2 control-label">Date
				de départ</label>
			<div class="col-sm-7">
				<fmt:formatDate value="${voyageUpdate.dateDepart}"
					pattern="dd/MM/yyyy" var="myDate" />
				<form:input type="text" path="dateDepart" class="form-control"
					id="inputDateD" placeholder="Date de départ" value="${myDate}"
					pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"
					title="La date n'est pas valide" required="required" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputHeureD" class="col-sm-2 control-label">Heure
				de départ</label>
			<div class="col-sm-7">
				<fmt:formatDate type="time" value="${voyageUpdate.heureDepart}"
					pattern="HH:mm" var="myTime" />
				<form:input type="time" path="heureDepart" class="form-control"
					id="inputHeureD" placeholder="Heure de départ" value="${myTime}" />
				<form:errors path="heureDepart" cssStyle="color: red" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputDateR" class="col-sm-2 control-label">Date
				de retour</label>
			<div class="col-sm-7">
				<fmt:formatDate value="${voyageUpdate.dateRetour}"
					pattern="dd/MM/yyyy" var="myDate" />
				<form:input type="text" path="dateRetour" class="form-control"
					id="inputDateR" placeholder="Date de Retour" value="${myDate}"
					pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"
					title="La date n'est pas valide" required="required" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputHeureR" class="col-sm-2 control-label">Heure
				de retour</label>
			<div class="col-sm-7">
				<fmt:formatDate type="time" value="${voyageUpdate.heureRetour}"
					pattern="HH:mm" var="myTime" />
				<form:input type="time" path="heureRetour" class="form-control"
					id="inputHeureR" placeholder="Heure de retour" value="${myTime}" />
				<form:errors path="heureRetour" cssStyle="color: red" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputFormule" class="col-sm-2 control-label">Formule</label>
			<div class="col-sm-7">
				<form:select path="formule" items="${formule}">
					<c:forEach items="${formule}" var="key">
						<form:option value="${key}">${key}</form:option>
					</c:forEach>
				</form:select>
			</div>
		</div>

		<div class="form-group">
			<label for="inputHebergement" class="col-sm-2 control-label">Hébergement</label>
			<div class="col-sm-7">
				<form:select path="hebergement" items="${hebergement}">
					<c:forEach items="${hebergement} " var="heb">
						<form:option value="${heb}">${heb}</form:option>
					</c:forEach>
				</form:select>
			</div>
		</div>

		<div class="form-group">
			<label for="inputPrixInit" class="col-sm-2 control-label">Prix
				initial</label>
			<div class="col-sm-7">
				<form:input path="prixInitial" class="form-control"
					id="inputPrixInit" placeholder="Prix initial" />
				<form:errors path="prixInitial" cssStyle="color: red"
					pattern="[0-9]+" title="Le prix n'est pas valide"
					required="required" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputPrix" class="col-sm-2 control-label">Prix
				proposé</label>
			<div class="col-sm-7">
				<form:input path="prixBase" class="form-control" id="inputPrix"
					placeholder="Prix proposé" />
				<form:errors path="prixBase" cssStyle="color: red" pattern="[0-9]+"
					title="Le prix n'est pas valide" required="required" />
			</div>
		</div>

		<div class="form-group">
			<label for="inputPlaces" class="col-sm-2 control-label">Nombre
				de places</label>
			<div class="col-sm-7">
				<form:input path="places" class="form-control" id="inputPlaces"
					placeholder="Nombre de places" />
				<form:errors path="places" cssStyle="color: red" pattern="[1-9]+"
					title="Le nombre de places n'est pas valide" required="required" />
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
			<input type="submit" class="btn btn-primary" value="Modifier"
				onmouseenter="compar()" />
		</div>
	</form:form>

	<p style="color: red; text-align: center">${message}</p>

</body>
</html>