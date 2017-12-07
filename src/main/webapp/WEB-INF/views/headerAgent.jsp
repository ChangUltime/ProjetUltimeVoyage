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
			<li><a href="${pageContext.request.contextPath}/agent/home">Tableau de Bord</a></li>
			<li><a href="${pageContext.request.contextPath}/agent/voyages">Voyages</a></li>
			<li><a href="${pageContext.request.contextPath}/agent/dossiers">Dossiers</a></li>
			<li><a href="${pageContext.request.contextPath}/agent/listeClients">Voyageurs</a></li>
			<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
		</ul>
	</div>
</nav>

</html>