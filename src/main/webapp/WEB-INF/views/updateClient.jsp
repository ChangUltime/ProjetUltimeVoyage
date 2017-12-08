<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formulaire modification client</title>
<%@ include file="resourceIncludes.jsp"%>
</head>
<body>

	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>

	<div id="agentContent">

		<form:form class="form-horizontal" method="POST"
			modelAttribute="clientUpdate" action="updateClient">

			<div class="form-group">
				<label for="inputId" class="col-sm-2 control-label">ID</label>
				<div class="col-sm-7">
					<form:input path="id" class="form-control" id="inputId"
						placeholder="ID" readonly="true" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputIdentifiant" class="col-sm-2 control-label">Identifiant</label>
				<div class="col-sm-7">
					<form:input path="identifiant" class="form-control"
						id="inputIdentifiant" placeholder="Identifiant"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]" title="Email invalide"
						required="required" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputMdp" class="col-sm-2 control-label">Mot de
					passe</label>
				<div class="col-sm-7">
					<form:input path="mdp" class="form-control" id="inputMdp"
						placeholder="Entrez le nouveau mot de passe" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputCivilite" class="col-sm-2 control-label">Civilite</label>
				<div class="col-sm-7">
					<form:select path="civilite" items="${civilite}">
						<c:forEach items="${civilite} " var="key">
							<form:option value="${key}">${key}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>

			<div class="form-group">
				<label for="inputNom" class="col-sm-2 control-label">Nom</label>
				<div class="col-sm-7">
					<form:input path="nom" class="form-control" id="inputNom"
						placeholder="Votre nom" pattern="[a-zA-Z ]+"
					title="Caractères autorisés : A-Z a-z" required="required"/>
				</div>
			</div>

			<div class="form-group">
				<label for="inputAdresse" class="col-sm-2 control-label">Adresse</label>
				<div class="col-sm-7">
					<form:input path="adresse" class="form-control" id="inputAdresse"
						placeholder="Entrez votre adresse" pattern="[a-zA-Z0-9 ]+"
					title="Caractères autorisés : A-Z a-z" required="required"/>
				</div>
			</div>


			<div class="form-group">
				<label for="inputTel" class="col-sm-2 control-label">Numéro
					de telephone</label>
				<div class="col-sm-7">
					<form:input path="tel" class="form-control" id="inputTel"
						placeholder="Entrez numéro de telephone" pattern="[0-9]{10}"
					title="Numéro à 10 chiffres" required="required"/>
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