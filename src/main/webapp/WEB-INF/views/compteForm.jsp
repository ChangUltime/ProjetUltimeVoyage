<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="/views/resourceIncludes.jsp"%>
</head>
<body>
	<form:form method="POST" action="dossierCompte"
		modelAttribute="formCompte">

		<!-- path : relier le champ à un attribut de l'objet ModelAttribut -->
	
		Civilité:<div class="radio">
			<label> <form:radiobutton path="civilite" name="optionsRadios" id="madame"
				value="Madame"/>
				Madame
			</label>
		</div>
		<div class="radio">
			<label> <form:radiobutton path="civilite"
					name="optionsRadios" id="monsieur" value="Monsieur"/>
					Monsieur
			</label>
		</div>

		<br />
		
		Nom :<form:input path="nom" />
		<form:errors path="nom" cssStyle="color:red" />
		<br />
		
		Adresse :<form:input path="adresse" />
		<form:errors path="adresse" cssStyle="color:red" />
		<br />
		
		Telephone :<form:input path="tel" />
		<form:errors path="tel" cssStyle="color:red" />
		<br />
		
		Identifiant : <form:input path="identifiant" />
		<form:errors path="identifiant" cssStyle="color:red" />
		<br />
		
		Mot de passe<form:input path="mdp" />
		<form:errors path="mdp" cssStyle="color:red" />
		<br />



		<input type="submit" value="Passer au paiement">
	</form:form>
</body>
</html>