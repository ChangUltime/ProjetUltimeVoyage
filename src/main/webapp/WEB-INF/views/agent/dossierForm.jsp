<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<%@ include file="../resourceIncludes.jsp" %>

</head>
<body>
<div id="agentHeader">
	<%@ include file="headerAgent.jsp" %>
</div>
<div id="agentContent">

	<form:form method="POST" action="agent/dossier/ajout" commandName="dossierForm">
		
		<!-- path : relier le champ à un attribut de l'objet ModelAttribut -->
		
		Prix Final: <form:input path="prixFinal"/>
		
		Date Paiement: <form:input path="datePaiement"/>
		
		Accompagnants: <form:input path="nbAccompagnants"/>
		
		Voyage: <form:select path="voyage" items="${voyages}"/>
		
		<input type="submit" value="Ajouter le Dossier">
	</form:form>

</div>
</body>
</html>