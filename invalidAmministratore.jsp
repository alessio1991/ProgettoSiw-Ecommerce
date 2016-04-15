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
<body style="background-color: #FF8020">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h:form>
						<h2>ARICONTROLLA I DATI!!</h2>
							<div>
								Nickname:
								<h:inputText value="#{administratorController.nickname}"
									required="true" requiredMessage="campo obbligatorio" id="email" />
								<h:message for="email" />
							</div>
							<div>
								Password:
								<h:inputSecret value="#{administratorController.password}"
									required="true" requiredMessage="campo obbligatorio"
									id="password" />
								<h:message for="password" />
							</div>
							<p></p>
							<div>

								<h:commandLink id="loginAdministrator"
									action="#{administratorController.loginAdministrator}"
									styleClass="btn btn-success">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-ok"></span> Loggame
								</h:commandLink>
							
							<input type="reset" value="Resetta tutto" class="btn btn-danger" /></div>
							<p></p>
							<p></p>
							<p></p>
							<a href='<c:url value="/faces/index.jsp" />'class="btn btn-default"><span class="glyphicon glyphicon-home"></span>Torna
								alla home</a>


						</h:form>
					</f:view>
					</div>
					</div>
					</div>
					</div>
</body>
</html>