<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<%@ include file="resourceIncludes.jsp"%>

<script src='<c:url value="/resources/js/searchBar.js"/>'></script>

<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

</head>
<body>
	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>
	<nav class="navbar navbar-inverse">
		<div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>

				<li class="active"><a
					href="${pageContext.request.contextPath}/agent/voyages">Voyages</a></li>
				<li><a href="${pageContext.request.contextPath}/agent/dossiers">Dossiers</a></li>
				<li><a
					href="${pageContext.request.contextPath}/agent/listeClients">Voyageurs</a></li>
				<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div id="agentContent">
		<a href="${pageContext.request.contextPath}/agent/formVoyageAdd"
			style="color: #D60D6B; margin: 20px; font-size: 25px">Ajouter
			Voyage</a>

		<div align="center">

			<!-- 			<select onchange="searchPays()" id="searchByPaysListe"> -->
			<!-- 				<option>Recherche par pays</option> -->
			<%-- 				<c:forEach items="${listeVoyages}" var="voyage"> --%>
			<%-- 					<option value="${voyage.pays}" >${voyage.pays}</option> --%>
			<%-- 				</c:forEach> --%>
			<!-- 			</select> -->

			<table class="table table-bordered" id="voyageTable">
				<tr>
					<th></th>
					<th><input type="text" id="searchContinent"
						onkeyup="searchByContinent()" placeholder="Continent"
						style="width: 120px"></th>
					<th><input type="text" id="searchPays"
						onkeyup="searchByPays()" placeholder="Pays" style="width: 120px"></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th><input type="text" id="searchHeb" onkeyup="searchByHeb()"
						placeholder="Hebergement" style="width: 150px"></th>
					<th></th>
					<th></th>
					<th><input type="text" id="searchNbPlaces"
						onkeyup="searchByNbPlaces()" placeholder="Places"
						style="width: 100px"></th>
					<th style="width: 150px"></th>
				</tr>
				<tr style="color: #D60D6B">
					<th>ID</th>
					<th style="cursor: pointer" onclick="sortTable(1)">Continent</th>
					<th style="cursor: pointer" onclick="sortTable(2)">Pays</th>
					<th style="cursor: pointer" onclick="sortTable(3)">Date de
						départ</th>
					<th style="cursor: pointer" onclick="sortTable(4)">Heure</th>
					<th style="cursor: pointer" onclick="sortTable(5)">Date de
						retour</th>
					<th style="cursor: pointer" onclick="sortTable(6)">Heure</th>
					<th style="cursor: pointer" onclick="sortTable(8)">Hébergement</th>
					<th style="cursor: pointer" onclick="sortTableNumber(9)">Prix
						initial</th>
					<th style="cursor: pointer" onclick="sortTableNumber(10)">Prix
						proposé</th>
					<th style="cursor: pointer" onclick="sortTable(11)">Places</th>
					<th>Opérations</th>
				</tr>

				<tbody id="tableVoyages">
					<c:forEach var="voyage" items="${listeVoyages}">
						<tr>
							<td>${voyage.id}</td>
							<td>${voyage.continent}</td>
							<td>${voyage.pays}</td>
							<td><fmt:formatDate type="time" value="${voyage.dateDepart}"
									pattern="dd/MM/yyyy" /></td>
							<td><fmt:formatDate type="time"
									value="${voyage.heureDepart}" pattern="HH:mm" /></td>
							<td><fmt:formatDate type="time" value="${voyage.dateRetour}"
									pattern="dd/MM/yyyy" /></td>
							<td><fmt:formatDate type="time"
									value="${voyage.heureRetour}" pattern="HH:mm" /></td>
							<td>${voyage.hebergement}</td>
							<td><fmt:formatNumber type="number"
									value="${voyage.prixInitial}" /></td>
							<td><fmt:formatNumber type="number"
									value="${voyage.prixBase}" /></td>
							<td>${voyage.places}</td>
							<td><a
								href="${pageContext.request.contextPath}/agent/supprimVoyageLien/${voyage.id}">Supprimer</a>
								/ <a
								href="${pageContext.request.contextPath}/agent/modifViaLien/?pId=${voyage.id}">Modifier</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

	<div id="paypal-button"></div>

	<script>
		paypal.Button.render({
			env : 'sandbox', // Or 'sandbox',

			commit : true, // Show a 'Pay Now' button

			style : {
				color : 'gold',
				size : 'small'
			},
			
			client: {
			      sandbox:'AdguwZEB4vvPiQzM9zGcY59cm1lDRD1o4dmdgUlqaZw0GH2r0xn5bHa_xvERtPc-DnCmtAgA9B56vDFt',
			    },

			payment : function(data, actions) {
				return actions.payment.create({
			        payment: {
			          transactions: [{
			            amount: { 
			              total: '1.00', 
			              currency: 'USD' 
			            }
			          }]
			        }
			      });
			},

			onAuthorize : function(data, actions) {
				return actions.payment.execute().then(function(payment) {
			        console.log('Payment completed:', payment);
			      });
			},

			onCancel : function(data, actions) {
				/* 
				 * Buyer cancelled the payment 
				 */
			},

			onError : function(err) {
				/* 
				 * An error occurred during the transaction 
				 */
			}
		}, '#paypal-button');
	</script>


</body>
</html>