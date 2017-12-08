<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="/views/resourceIncludes.jsp"%>

<title>Insert title here</title>

<script>
	function car(choixCar) {
		if (choixCar.checked) {
			//le code qui affiche la partie de ton formulaire masquée
			document.getElementById('choixVoiture').style.visibility = 'visible';
			document.getElementById('choixVoiture').style.display = 'block';
		} else {
			//le code qui le cache
			document.getElementById('choixVoiture').style.visibility = 'hidden ';
			document.getElementById('choixVoiture').style.display = 'none'
		}
	}
</script>

<script>
	function assur(choixAssur) {
		if (choixAssur.checked) {
			//le code qui affiche la partie de ton formulaire masquée
			document.getElementById('choixAssurance').style.visibility = 'visible';
			document.getElementById('choixAssurance').style.display = 'block';
		} else {
			//le code qui le cache
			document.getElementById('choixAssurance').style.visibility = 'hidden ';
			document.getElementById('choixAssurance').style.display = 'none'
		}
	}
</script>

</head>
<body>


	<form:form method="POST" action="${pageContext.request.contextPath}/formDossierOptions"
		modelAttribute="dossierOptions">

	Votre voyage :
	<br/> 
		<div style="visibility: hidden; display: none">
		<form:input path="voyage.id"  type="text" value="${dossierOptions.voyage.id}" />
		</div>
	
	<label> Départ <input type="text" value="${dossierOptions.voyage.dateDepart}" disabled/> <br />
			Retour <input type="text" value="${dossierOptions.voyage.dateRetour}" disabled/>
		</label>

		<br />

		<label> Destination <input type="text" value="${dossierOptions.voyage.pays}" disabled/>
		</label>

		<br />

		<label> Formule <input type="text" value="${dossierOptions.voyage.formule}" disabled/>
		</label>
		<br />

	<div class="form-group">
				<label class="col-sm-2 control-label">Hebergement</label>
				<div class="col-sm-7">
					<form:select path="voyage.hebergement" items="${listHebergement}">
						<c:forEach items="${listHebergement} " var="key">
							<form:option value="${key}">${key}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>


	<br/>
	Souhaitez-vous louer un véhicule ?
	<input onclick="car(this)" type="checkbox" id="choixCar" value="yes" />
		<br />
		<div class="form-group" id="choixVoiture"  style="visibility: hidden; display: none">
			<form:label path="voiture.id" class="col-sm-0 control-label" />
			<div class="col-sm-4">
				<form:select class="form-control" path="voiture.id">
					<form:option value="0">Selectionner un véhicule</form:option>
					<form:options items="${listeVoitures}" itemLabel="modele"
						itemValue="id"></form:options>
				</form:select>
			</div>
		</div>
		<br /> Souhaitez-vous souscrire à une assurance ?
	<input onclick="assur(this)" type="checkbox" id="choixAssur"
			value="yes" />
		<br />
		<div class="form-group" id="choixAssurance"  style="visibility: hidden; display: none">
			<form:label path="assurance.id" class="col-sm-0 control-label" />
			<div class="col-sm-4">
				<form:select class="form-control" path="assurance.id">
					<form:options items="${listeAssurances}" itemLabel="type"
						itemValue="id"></form:options>
				</form:select>
			</div>
		</div>



	<br/>
	Combien de personnes seront du voyage (hormis vous) ?
	<form:input path="nbAccompagnants" />
		<form:errors path="nbAccompagnants" cssStyle="color:red" />


	<br/>
	<input type="submit" value="Passer à l'étape suivante">
	


	</form:form>
</body>
</html>