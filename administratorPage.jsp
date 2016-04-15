<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Er Portale de Roma</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">

</head>
<body>
<body style="background-color: #FF8020">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h1>Ave a te,
							${administratorController.currentAdministrator.nickname}</h1>
						<p></p>
						<p></p>

						<h:form>

							<h:commandLink id="listProducts"
								action="#{productController.listAdministratorProducts}"
								styleClass="btn btn-default">
								<i class="icon-search"></i>
								<span class="glyphicon glyphicon-list"></span> Consulta er Catalogo
								</h:commandLink>
						</h:form>
						<br>
						<a href='<c:url value="/faces/newProvider.jsp" />'
							class="btn btn-default"><span
							class="glyphicon glyphicon-plus"></span>Inserisci nuovo fornitore</a>
						<p></p>
						<p></p>
						<h:form>
							<h:commandLink id="newProduct"
								action="#{administratorController.newProduct}"
								styleClass="btn btn-default">
								<i class="icon-search"></i>
								<span class="glyphicon glyphicon-plus"></span> Inserisci nuovo prodotto
								</h:commandLink>
						</h:form>
						<br>
						<a href='<c:url value="/faces/customerRegistrationByAdmin.jsp" />'
							class="btn btn-default"><span
							class="glyphicon glyphicon-plus"></span>Registra nuovo utente</a>
						<p></p>
						<p></p>
						<h:form>
							<h:commandLink id="listCustomers"
								action="#{customerController.listCustomers}"
								styleClass="btn btn-default">
								<i class="icon-search"></i>
								<span class="glyphicon glyphicon-list"></span> Lista utenti
								</h:commandLink>
						</h:form>
						<br>
						<h:form>
							<h:commandLink id="listOrders"
								action="#{administratorController.listClosedOrders}"
								styleClass="btn btn-default">
								<i class="icon-search"></i>
								<span class="glyphicon glyphicon-list"></span>Lista Ordini
								</h:commandLink>
						</h:form>
						<br>

						<h:form>
							<h:commandLink id="logout"
								action="#{administratorController.logoutAdministrator}"
								styleClass="btn btn-danger">
								<i class="icon-search"></i>
								<span class="glyphicon glyphicon-remove"></span>Logout
								</h:commandLink>
						</h:form>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>