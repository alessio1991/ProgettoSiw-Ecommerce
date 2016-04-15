<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Utenti registrati</title>
 <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap theme -->
  <link href="css/bootstrap-theme.min.css" rel="stylesheet">
  
</head>
<body>
<body style="background-color: #FF8020">
	<div class="container">
		<div class="row">
			
				<!-- maschera intorno la form -->
				<div class="jumbotron">
	<f:view>
		<h1>Utenti registrati!</h1>
		<h:form>
			<table>
				<tr>
					<th><font size=3>E-mail</font></th>
					<th><font size=3>Nome</font></th>
					<th><font size=3>Cognome</font></th>
					<th><font size=3>Telefono</font></th>
					<th><font size=3>Data Registrazione</font></th>
					<th></th>
					<th><font size=3>Indirizzo</font></th>
				</tr>
				<c:forEach var="customer" items="#{customerController.customers}">
					<tr>
						<td><font size=4>${customer.email}</font></td>
						<td><font size=4>${customer.firstName}</font></td>
						<td><font size=4>${customer.lastName}</font></td>
						<td><font size=4>${customer.phoneNumber}</font></td>
						<td><font size=4><h:outputText value="#{customer.registrationDate}">
								<f:convertDateTime dateStyle="medium" locale="it_IT" type="date" />
							</h:outputText></font></td>
						<td><font size=4>${customer.address.street}</font></td>
						<td><font size=4>${customer.address.zipcode}</font></td>
						<td><font size=4>${customer.address.city}</font></td>

					</tr>
				</c:forEach>
			</table>
		</h:form>

	<p></p>
					<a href='<c:url value="/faces/administratorPage.jsp" />'
							class="btn btn-default"><span
							class="glyphicon glyphicon-home"></span>Torna alla tua area
							riservata</a>

	</f:view>
	</div></div></div>
</body>
</html>