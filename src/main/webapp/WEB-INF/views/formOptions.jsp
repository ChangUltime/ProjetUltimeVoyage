<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	function car(choixAssur) {
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


	<form:form method="POST" action="soumettreForm"
		commandName="formOptions">

	Votre voyage : 
	<label> Départ <input type="text" value="" disabled> <br />
			Retour <input type="text" value="" disabled>
		</label>

		<br />

		<label> Destination <input type="text" value="" disabled>
		</label>

		<br />

		<label> Formule <input type="text" value="" disabled>
		</label>
		<br />

	Votre hébergement ?
	<label class="radio-inline"> <form:input type="radio"
				path="voyage.hebergement" name="inlineRadioOptions"
				id="inlineRadio1" value="HebergementSeul"> Hôtel uniquement </form:input>
		</label>
		<label class="radio-inline"> <form:input type="radio"
				path="voyage.hebergement" name="inlineRadioOptions"
				id="inlineRadio2" value="PetitDejeuner"> Petit dejeuner</form:input>
		</label>
		<label class="radio-inline"> <form:input type="radio"
				path="voyage.hebergement" name="inlineRadioOptions"
				id="inlineRadio3" value="DemiPension"> Demi-pension </form:input>
		</label>
		<label class="radio-inline"> <form:input type="radio"
				path="voyage.hebergement" name="inlineRadioOptions"
				id="inlineRadio4" value="PensionComplete"> Pension complete</form:input>
		</label>
		<label class="radio-inline"> <form:input type="radio"
				path="voyage.hebergement" name="inlineRadioOptions"
				id="inlineRadio5" value="AllInclusive"> All inclusive </form:input>
		</label>

	Souhaitez-vous louer un véhicule ?
	<input onclick="car(this)" type="checkbox" id="choixCar" value="yes" />
		<br />
		<div class="form-group" id="choixVoiture">
			<form:label path="voiture.id" class="col-sm-2 control-label" />
			<div class="col-sm-4">
				<form:select class="form-control" path="voiture.id">
					<form:options items="${listeVoitures}" itemLabel="marque modele"
						itemValue="id"></form:options>
				</form:select>
			</div>
		</div>
		<br /> Souhaitez-vous assurer votre voyage ?
	<input onclick="assur(this)" type="checkbox" id="choixAssur"
			value="yes" />
		<br />
		<div class="form-group" id="choixAssurance">
			<form:label path="assurance.id" class="col-sm-2 control-label" />
			<div class="col-sm-4">
				<form:select class="form-control" path="assurance.id">
					<form:options items="${listeAssurances}" itemLabel="type prix"
						itemValue="id"></form:options>
				</form:select>
			</div>
		</div>




	Combien de personnes seront du voyage (hormis vous) ?
	<form:input path="nbAccompagnants" />
		<form:errors path="nbAccompagnants" cssStyle="color:red" />

	</form:form>
</body>
</html>