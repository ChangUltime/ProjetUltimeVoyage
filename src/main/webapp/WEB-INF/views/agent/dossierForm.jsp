<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

	<form:form method="POST" action="soumettreForm" commandName="formAssurance">
		
		<!-- path : relier le champ à un attribut de l'objet ModelAttribut -->
		Id :<form:input path="id"/><form:errors path="id" cssStyle="color:red"/><br/>
		<br/>
		<input type="submit" value="Soumettre le formulaire">
	</form:form>

</div>
</body>
</html>