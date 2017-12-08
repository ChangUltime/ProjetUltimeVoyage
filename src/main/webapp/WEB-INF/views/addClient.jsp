<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
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

		<h1 style="color: red; text-align: center">Formulaire d'ajout</h1>

		<form:form class="form-horizontal" method="POST"
			modelAttribute="clientAdd" action="addClient">

			<div class="form-group">
				<label for="inputIdentifiant" class="col-sm-2 control-label">Identifiant</label>
				<div class="col-sm-7">
					<form:input path="identifiant" class="form-control"
						id="inputIdentifiant" placeholder="Identifiant" />
					<form:errors path="identifiant" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputMdp" class="col-sm-2 control-label">Mot de
					passe</label>
				<div class="col-sm-7">
					<form:input path="mdp" class="form-control" id="inputMdp"
						placeholder="Entrez le nouveau mot de passe" />
					<form:errors path="mdp" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputCivilite" class="col-sm-2 control-label">Civilite</label>
				<div class="col-sm-7">
					<form:select path="civilite" items="${civilite}">
						<c:forEach items="${civilite}" var="key">
							<form:option value="${key}">${key}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>

			<div class="form-group">
				<label for="inputNom" class="col-sm-2 control-label">Nom</label>
				<div class="col-sm-7">
					<form:input path="nom" class="form-control" id="inputNom"
						placeholder="Votre nom" />
					<form:errors path="nom" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputAdresse" class="col-sm-2 control-label">Adresse</label>
				<div class="col-sm-7">
					<form:input path="adresse" class="form-control" id="inputAdresse"
						placeholder="Entrez votre adresse" />
					<form:errors path="adresse" cssStyle="color: red" />
				</div>
			</div>


			<div class="form-group">
				<label for="inputTel" class="col-sm-2 control-label">Numéro
					de telephone</label>
				<div class="col-sm-7">
					<form:input path="tel" class="form-control" id="inputTel"
						placeholder="Entrez numéro de telephone" />
					<form:errors path="tel" cssStyle="color: red" />
				</div>
			</div>

			<div class="col-sm-2">
				<input type="submit" class="btn btn-warning" value="Ajouter" />
			</div>
		</form:form>
		
		<p style="color: red; text-align: center">${message}</p>
		
	</div>
</body>
</html>