<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<script src='<c:url value="/resources/js/jquery-3.2.1.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.js"/>'></script>
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="agentHeader">
	<%@ include file="headerAgent.jsp" %>
</div>
<div id="agentContent">
Des Dossiers
	<table>
		<thead>
			<tr>
				<th></th>
			</tr>
		</thead>
		
		<tbody>
		
		</tbody>
	</table>

</div>

</body>
</html>