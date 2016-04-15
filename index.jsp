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
<!--  <body style="background-color: #ff7641"> -->
<body BACKGROUND="<c:url value='/img/colosseo.jpg'/>"/>
	<!-- Comandi div per gestire griglia -->
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand">SPQR</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href='<c:url value="/faces/loginAdministrator.jsp" />'>Login
							pe l'amministratore</a></li>
					<li><a href='<c:url value="/faces/loginUtente.jsp" />'>Login
							pe l'utente</a></li>
				</ul>
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<!-- maschera intorno la form -->
							<div class="jumbotron">

								<f:view>
									<h2 align="center">Benvenuti ner Portale de Roma!</h2>
									<br>
									<br>
									<i><h4 align="center">Qui da noi puoi trova'</h4></i>
									<i><h4 align="center">tante cose d'acquista',</h4></i>
									<i><h4 align="center">tra sanpietrini e acqua der nasone</h4></i>
									<i><h4 align="center">qui puoi trova' la vera occasione.</h4></i>
									<i><h4 align="center">Se vuoi fa' n'acquisto cor botto</h4></i>
									<i><h4 align="center">Te basta clicca qua sotto!!</h4></i>
									<br>
									<b><h4 align="center"><h:form>
										<h:commandLink action="#{productController.listProducts}"
											value="Consulta er catalogo" />
									</h:form></h4></b>
								</f:view>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		</nav>
</body>


</html>