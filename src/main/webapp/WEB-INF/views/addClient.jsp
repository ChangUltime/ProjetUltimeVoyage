<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br />
	<h1 style="color: red; text-align: center">Formulaire d'ajout</h1>

	<form:form class="form-horizontal" method="POST"
		modelAttribute="clientAdd" action="submitAddFormClient">
		<div class="form-group">
			<form:label path="identifiant" class="col-sm-2 control-label">Identifiant</form:label>
			<div class="col-sm-10">
				<form:input path="identifiant" />
				<form:errors path="identifiant" class="col-sm-6"></form:errors>
			</div>
		</div>

		<div class="form-group">
			<form:label path="mdp" class="col-sm-2 control-label">Mot de passe</form:label>
			<div class="col-sm-10">
				<form:input path="mdp" />
				<form:errors path="mdp" class="col-sm-6"></form:errors>
			</div>
		</div>

		<div class="form-group">
			<form:label path="civilite" class="col-sm-2 control-label">Civilite</form:label>
			<div class="col-sm-10">
				<form:input path="civilite" />
				<form:errors path="civilite" class="col-sm-6"></form:errors>
			</div>
		</div>
		
		<div class="form-group">
			<form:label path="nom" class="col-sm-2 control-label">nom</form:label>
			<div class="col-sm-10">
				<form:input path="nom" />
				<form:errors path="nom" class="col-sm-6"></form:errors>
			</div>
		</div>
		
		<div class="form-group">
			<form:label path="adresse" class="col-sm-2 control-label">Adresse</form:label>
			<div class="col-sm-10">
				<form:input path="adresse" />
				<form:errors path="adresse" class="col-sm-6"></form:errors>
			</div>
		</div>
		
		<div class="form-group">
			<form:label path="tel" class="col-sm-2 control-label">Telephone</form:label>
			<div class="col-sm-10">
				<form:input path="tel" />
				<form:errors path="tel" class="col-sm-6"></form:errors>
			</div>
		</div>
		<input type="submit" value="Ajouter le client"
			class="btn btn-primary" />
	</form:form>
</body>
</html>