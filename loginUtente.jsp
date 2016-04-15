<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Accedi</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">

</head>
<body>
<body style="background-color: #1050E0">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h:form>

							<div align="center">
								Email:
								<h:inputText value="#{customerController.email}" required="true"
									requiredMessage="campo obbligatorio" id="email" />
								<h:message for="email" />
							
								Password:
								<h:inputSecret value="#{customerController.password}"
									required="true" requiredMessage="campo obbligatorio"
									id="password" />
								<h:message for="password" />
							</div>
							<p></p>
							<p></p>
							<div align="center">

								<h:commandLink id="loginCustomer"
									action="#{customerController.loginCustomer}"
									styleClass="btn btn-success">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-ok"></span> Loggame
								</h:commandLink>

								<input type="reset" value="Resetta tutto" class="btn btn-danger" />


							
							<p></p>
							<p></p>
							<p></p>

							<a href='<c:url value="/faces/customerRegistration.jsp" />'
								class="btn btn-info"><span class="glyphicon glyphicon-user"></span>
								Registrame</a>
							<p></p>
							<p></p>
							<a href='<c:url value="/faces/index.jsp" />'
								class="btn btn-default"><span
						     	class="glyphicon glyphicon-home"></span>Torna alla home</a>
						</div>
						</h:form>
					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>