<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<c:url value='/resources/js/jquery-3.2.1.min.js' />" rel="stylesheet" />
<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet" />
<link href="<c:url value='/resources/css/bootstrap-theme.css' />" rel="stylesheet" />
<link href="<c:url value='/resources/js/bootstrap.js' />" rel="stylesheet" />


<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSite</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a
					href="${pageContext.request.contextPath}/admin/listeVoyage">Accueil</a></li>
			</ul>
		</div>
	</nav>

	<%response.sendRedirect("agent/home"); %>

	<h1>Hello !</h1>
</body>
</html>