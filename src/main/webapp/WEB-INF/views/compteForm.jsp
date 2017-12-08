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
	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>

	<div
		style="position: absolute; width: 30%; height: 82%; left: 10%; top: 16%; text-align: center; background-color: rgba(255, 255, 255, 0.8); border: medium; border-color: #D60D6B; border-style: solid;">
		<form:form method="POST" action="dossierCompte"
			modelAttribute="formCompte">

			<!-- path : relier le champ à un attribut de l'objet ModelAttribut -->
	
		Civilité:<div class="radio">
				<label> <form:radiobutton path="civilite"
						name="optionsRadios" id="madame" value="Madame" /> Madame
				</label>
			</div>
			<div class="radio">
				<label> <form:radiobutton path="civilite"
						name="optionsRadios" id="monsieur" value="Monsieur" /> Monsieur
				</label>
			</div>

			<br />
		
		Nom :<form:input class="form-control" path="nom" />
			<form:errors path="nom" cssStyle="color:red" />
			<br />
		
		Adresse :<form:input class="form-control" path="adresse" />
			<form:errors path="adresse" cssStyle="color:red" />
			<br />
		
		Telephone :<form:input class="form-control" path="tel" />
			<form:errors path="tel" cssStyle="color:red" />
			<br />
		
		Identifiant : <form:input class="form-control" path="identifiant" />
			<form:errors path="identifiant" cssStyle="color:red" />
			<br />
		
		Mot de passe<form:input class="form-control" path="mdp" />
			<form:errors path="mdp" cssStyle="color:red" />
			<br />


			<input type="button" onclick="myFunction2()"
				value="Imprimer/télécharger" id="btnPrint"
				style="margin: 20px" class="btn-warning">
				
				</input>
			<input style="margin: 20px" class="btn-warning" type="submit"
				value="Passer au paiement">
		</form:form>
	</div>
</body>
</html>