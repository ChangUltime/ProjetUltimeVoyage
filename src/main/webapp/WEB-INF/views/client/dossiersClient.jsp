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

<script src="https://www.paypalobjects.com/api/checkout.js"></script>

</head>
<body>
<div id="clientHeader">
	<%@ include file="headerClient.jsp" %>
</div>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li><a
				href="${pageContext.request.contextPath}/listeVoyage">Accueil</a></li>
			<li ><a href="${pageContext.request.contextPath}/client/home">Tableau de Bord</a></li>
			<li><a href="${pageContext.request.contextPath}/client/infos">Infos</a></li>
			<li class="active"><a href="${pageContext.request.contextPath}/client/dossiers">Dossiers</a></li>
			<li><a href="${pageContext.request.contextPath}/commonLogout">Logout</a></li>
		</ul>
	</div>
</nav>
<div id="clientContent">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Etat</th>
				<th>Prix</th>
				<th>Paiement</th>
				<th>Accompagnants</th>
				<th>Paiement</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dossier" items="${listeDossiers}">
				<tr>
					<td>${dossier.id}</td>
					<td>${dossier.etat}</td>
					<td id="prixFinal">${dossier.prixFinal}</td>
					<td>${dossier.datePaiement}</td>
					<td>${dossier.nbAccompagnants}</td>
					<td><span id="paypal-button"></span></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>

<script>
		var prix = getElementById("prixFinal").value;
		console.log(getElementById("prixFinal").value);
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
			              total: prix, 
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