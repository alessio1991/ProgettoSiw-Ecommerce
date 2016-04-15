<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Inserimento nuovo fornitore</title>
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
						<h:form id="addingProvider">
							<tr>
								<td><h2>Inserimento nuovo fornitore</h2></td>
							</tr>
							<tr>
								<td>
									<div>
										Nome:
										<h:inputText value="#{providerController.name}"
											required="true" requiredMessage="campo obbligatorio"
											id="name" />
										<h:message for="name" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										E-mail:
										<h:inputText value="#{providerController.email}"
											required="true" requiredMessage="campo obbligatorio"
											id="email" />
										<h:message for="email" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										Telefono:
										<h:inputText value="#{providerController.phoneNumber}"
											required="true" requiredMessage="campo obbligatorio"
											id="phoneNumber" />
										<h:message for="phoneNumber" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										Partita IVA:
										<h:inputText value="#{providerController.vatin}"
											required="true" requiredMessage="campo obbligatorio"
											id="vatin" />
										<h:message for="vatin" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										Via/Piazza:
										<h:inputText value="#{providerController.street}"
											required="true" requiredMessage="campo obbligatorio"
											id="address_street" />
										<h:message for="address_street" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										CAP:
										<h:inputText value="#{providerController.zipcode}"
											required="true" requiredMessage="campo obbligatorio"
											id="address_zipcode" />
										<h:message for="address_zipcode" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										Citta':
										<h:inputText value="#{providerController.city}"
											required="true" requiredMessage="campo obbligatorio"
											id="address_city" />
										<h:message for="address_city" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										Provincia:
										<h:inputText value="#{providerController.country}"
											required="true" requiredMessage="campo obbligatorio"
											id="address_country" />
										<h:message for="address_country" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										Nazione:
										<h:inputText value="#{providerController.state}"
											required="true" requiredMessage="campo obbligatorio"
											id="address_state" />
										<h:message for="address_state" />
									</div>
								</td>
							</tr>
							<br>
							<tr>
								<td>
									<div>
										<h:commandLink id="submitProvider"
											action="#{providerController.createProvider}"
											styleClass="btn btn-success">
											<i class="icon-search"></i>
											<span class="glyphicon glyphicon-ok"></span> Salva
								</h:commandLink>
									</div><br> <a href='<c:url value="/faces/administratorPage.jsp" />'
									class="btn btn-default"><span
										class="glyphicon glyphicon-home"></span>Torna all'area
										riservata</a>
						</h:form>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>