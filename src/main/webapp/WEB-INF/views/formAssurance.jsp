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
	<form:form method="POST" action="soumettreForm" commandName="formAssurance">
		
		<!-- path : relier le champ à un attribut de l'objet ModelAttribut -->
		Id :<form:input path="id"/><form:errors path="id" cssStyle="color:red"/><br/>
		<br/>
		<input type="submit" value="Soumettre le formulaire">
	</form:form>
</body>
</html>