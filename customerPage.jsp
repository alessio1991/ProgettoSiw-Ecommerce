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
<body BACKGROUND="<c:url value='/img/cesare.png'/>"/>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h1 align="center">Ave ${customerController.currentCustomer.firstName}</h1>
						<h2 align="center">"morituri" te salutant!</h2>
						<p></p>
						<p></p>
						<ul>
							<h:form>
                             <div align="center">
								<h:commandLink id="listProducts"
									action="#{productController.listCustomerProducts}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-list"></span> Consulta er Catalogo
								</h:commandLink>
								</div>
							</h:form>
</ul>
							<ul><h:form>
							<div align="center">
								<h:commandLink id="createOrder"
									action="#{orderController.createOrder}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-plus"></span> Crea 'sto ordine
								</h:commandLink>
								</div>
							</h:form>
</ul>
						<ul>	<h:form>
						        <div align="center">
								<h:commandLink id="listOrders"
									action="#{customerController.listOrders}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-th"></span> I miei ordini
								</h:commandLink>
								</div>
							</h:form>

						</ul>
						<h:form>
						<div align="center">
							<h:commandLink id="logout"
								action="#{customerController.logoutCustomer}"
								styleClass="btn btn-danger">
								<i class="icon-search"></i>
								<span class="glyphicon glyphicon-remove"></span> Logout
								</h:commandLink>
								</div>
						</h:form>
					</f:view>
				</div>
			</div>
		</div>
		</div>
</body>
</html>