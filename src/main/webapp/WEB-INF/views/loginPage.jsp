<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/views/resourceIncludes.jsp"%>
<title>Page Login</title>
</head>
<body>
	<div style="height: 110px; background-color: #D60D6B">
		<img src="resources/css/images/logo.png"
			style="position: absolute; top: 2px; left: 30%">
	</div>
	<div
		style="position: absolute; width: 40%; height: 30%; left: 30%; top: 35%; text-align: center; background-color: rgba(255, 255, 255, 0.8); border: medium; border-color: #D60D6B; border-style: solid;">
		<form action="commonLogin" method="post">
			<input class="form-control"
				style="margin: 20px; background-color: transparent; color: #D60D6B; width: 80%; position: absolute; top: 10%; left: 8%"
				type="text" name="j_username" placeholder="Identifiant" /> <input
				class="form-control"
				style="margin: 20px; background-color: transparent; color: #D60D6B; width: 80%; position: absolute; top: 30%; left: 8%"
				type="password" name="j_password" placeholder="Mot de passe" /> <br />
			<input style="margin: 15px; position: absolute; top: 70%; left: 40%"
				type="submit" value="Se Connecter" class="btn-warning">

		</form>
	</div>

	<c:if test="${not empty erreur}">
		<h1>Login ou Mot de Passe erronné</h1>
	</c:if>

</body>
</html>