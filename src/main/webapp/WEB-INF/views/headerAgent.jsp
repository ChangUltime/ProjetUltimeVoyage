<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<div style="height: 110px; background-color: #D60D6B">
	<img src="${pageContext.request.contextPath}/resources/css/images/logo.png"
		style="position: absolute; top: 2px; left: 30%">
</div>
<nav class="navbar navbar-inverse">
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a
				href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
			<li><a href="${pageContext.request.contextPath}/agent/home">Tableau
					de Bord</a></li>
			<li><a href="${pageContext.request.contextPath}/agent/voyages">Voyages</a></li>
			<li><a href="${pageContext.request.contextPath}/agent/dossiers">Dossiers</a></li>
			<li><a
				href="${pageContext.request.contextPath}/agent/listeClients">Voyageurs</a></li>
			<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
		</ul>
	</div>
</nav>

</html>