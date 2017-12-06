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
				href="${pageContext.request.contextPath}/admin/listeVoyage">Accueil</a></li>
		</ul>
	</div>
</nav>

<ul style="list-style: none;">
	<li><a href="home">Home</a></li>
	<li><a href="voyages">Voyages</a></li>
	<li><a href="dossiers">Dossiers</a></li>
	<li><a href="clients">Voyageurs</a></li>
</ul>

</html>