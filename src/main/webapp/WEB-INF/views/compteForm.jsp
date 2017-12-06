<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="POST" action="soumettreForm"
		commandName="formCompte">
		
		<!-- path : relier le champ à un attribut de l'objet ModelAttribut -->
	
		Civilité:<div class="radio">
			<label> <input type="radio" name="optionsRadios"
				id="madame" value="Madame" checked> Mme.
			</label>
		</div>
		<div class="radio">
			<label> <form:input path="client.civilite" type="radio" name="optionsRadios"
				id="monsieur" value="Monsieur"> M.</form:input>
			</label>
		</div>

		<br />
		
		Nom :<form:input path="client.nom"/>
		<form:errors path="client.nom" cssStyle="color:red" />
		<br />
		
		Adresse :<form:input path="client.adresse" />
		<form:errors path="client.adresse" cssStyle="color:red" />
		<br />
		
		Telephone :<form:input path="client.tel" />
		<form:errors path="client.tel" cssStyle="color:red" />
		<br />
		
		Identifiant : <form:input path="client.identifiant" />
		<form:errors path="client.identifiant" cssStyle="color:red" />
		<br />
		
		Mot de passe<form:input path="client.mdp" />
		<form:errors path="client.mdp" cssStyle="color:red" />
		<br />
		
		
		
		<input type="submit" value="Passer au paiement">
	</form:form>
</body>
</html>