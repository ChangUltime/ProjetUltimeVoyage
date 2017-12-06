<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="resourceIncludes.jsp"%>
</head>
<body>

	<div id="agentHeader">
		<%@ include file="headerAgent.jsp"%>
	</div>

	<div id="agentContent">

		<form:form class="form-horizontal" method="POST"
			modelAttribute="voyageAdd" action="ajouteVoyage">

			<div class="form-group">
				<label for="inputContinent" class="col-sm-2 control-label">Continent</label>
				<div class="col-sm-7">
					<form:input path="continent" class="form-control"
						id="inputContinent" placeholder="Continent" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPays" class="col-sm-2 control-label">Pays</label>
				<div class="col-sm-7">
					<form:input path="pays" class="form-control" id="inputPays"
						placeholder="Pays" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputDateD" class="col-sm-2 control-label">Date
					de départ</label>
				<div class="col-sm-7">
					<fmt:formatDate value="${voyageUpdate.dateDepart}"
						pattern="dd/MM/yyyy" var="myDate" />
					<form:input type="text" path="dateDepart" class="form-control"
						id="inputDateD" placeholder="Date de départ" value="${myDate}" />
					<form:errors path="dateDepart" cssStyle="color: red" />
				</div>
			</div>

					<div class="form-group">
						<label for="inputHeureD" class="col-sm-2 control-label">Heure
							de départ</label>
						<div class="col-sm-7">
							<fmt:formatDate type="time" value="${voyageUpdate.heureDepart}"
			 					pattern="HH:mm" var="myTime" />  
			 				<form:input type="time" path="heureDepart" class="form-control"  
			  					id="inputHeureD" placeholder="Heure de départ" value="${myTime}" />  
			  				<form:errors path="heureDepart" cssStyle="color: red" />  
						</div>
					</div>

			<div class="form-group">
				<label for="inputDateR" class="col-sm-2 control-label">Date
					de retour</label>
				<div class="col-sm-7">
					<fmt:formatDate value="${voyageUpdate.dateRetour}"
						pattern="dd/MM/yyyy" var="myDate" />
					<form:input type="text" path="dateRetour" class="form-control"
						id="inputDateD" placeholder="Date de Retour" value="${myDate}" />
					<form:errors path="dateRetour" cssStyle="color: red" />
				</div>
			</div>

							<div class="form-group">
								<label for="inputHeureR" class="col-sm-2 control-label">Heure
									de retour</label>
								<div class="col-sm-7">
									<fmt:formatDate type="time" value="${voyageUpdate.heureRetour}"
			  					pattern="HH:mm" var="myTime" />  
			  				<form:input type="time" path="heureRetour" class="form-control"  
			 					id="inputHeureR" placeholder="Heure de retour" value="${myTime}" /> 
			  				<form:errors path="heureRetour" cssStyle="color: red" />   
								</div>
							</div>

			<div class="form-group">
				<label for="inputFormule" class="col-sm-2 control-label">Formule</label>
				<div class="col-sm-7">
					<form:select path="formule">
						<c:forEach items="${formule}" var="key">
							<form:option value="${key}">${key}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>

			<div class="form-group">
				<label for="inputHebergement" class="col-sm-2 control-label">Hébergement</label>
				<div class="col-sm-7">
					<form:select path="hebergement">
						<c:forEach items="${hebergement} " var="heb">
							<form:option value="${heb}">${heb}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>

			<div class="form-group">
				<label for="inputPrix" class="col-sm-2 control-label">Prix</label>
				<div class="col-sm-7">
					<form:input path="prixBase" class="form-control" id="inputPrix"
						placeholder="Prix" />
					<form:errors path="prixBase" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPlaces" class="col-sm-2 control-label">Nombre
					de places</label>
				<div class="col-sm-7">
					<form:input path="places" class="form-control" id="inputPlaces"
						placeholder="Nombre de places" />
					<form:errors path="places" cssStyle="color: red" />
				</div>
			</div>

			<div class="form-group">
				<label for="inputPlanning" class="col-sm-2 control-label">Planning</label>
				<div class="col-sm-7">
					<form:input path="description" class="form-control"
						id="inputPlanning" placeholder="Planning" />
					<form:errors path="description" cssStyle="color: red" />
				</div>
			</div>

			<div class="col-sm-2">
				<input type="submit" class="btn btn-primary" value="Ajouter" />
			</div>
		</form:form>

		<p style="color: red; text-align: center">${message}</p>


	</div>

</body>
</html>