<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">WebSite</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a
				href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
			<li><a href="${pageContext.request.contextPath}/client/home">Tableau de Bord</a></li>
			<li><a href="${pageContext.request.contextPath}/client/infos">Infos</a></li>
			<li><a href="${pageContext.request.contextPath}/client/dossiers">Dossiers</a></li>
			<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
		</ul>
	</div>
</nav>

</html>