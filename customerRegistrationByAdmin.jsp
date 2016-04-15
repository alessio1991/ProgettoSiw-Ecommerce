<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Nuovo utente</title>
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
						<h:form id="registrationCustomerByAdmin">
							<tr>
								<td><h2>Nuovo utente da registra!</h2></td>
							</tr>
							<tr>
								<td>
									<div>
										Nome:
										<h:inputText value="#{administratorController.firstName}"
											required="true" requiredMessage="campo obbligatorio"
											id="firstName" />
										<h:message for="firstName" />
									</div>
								</td>
							</tr>
														<br>
							
							<tr>
								<td>
									<div>
										Cognome:
										<h:inputText value="#{administratorController.lastName}"
											required="true" requiredMessage="campo obbligatorio"
											id="lastName" />
										<h:message for="lastName" />
									</div>
								</td>
							</tr>
														<br>
							
							<tr>
								<td>
									<div>
										E-mail:
										<h:inputText value="#{administratorController.email}"
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
										Password:
										<h:inputSecret
											value="#{administratorController.passwordCustomer}"
											required="true" requiredMessage="campo obbligatorio"
											validatorMessage="la password deve avere minimo 5 caratteri"
											id="passwordCustomer">
											<f:validateLength minimum="5" />
										</h:inputSecret>
										<h:message for="passwordCustomer" />
									</div>
								</td>
							</tr>
														<br>
							
							<tr>
								<td>
									<div>
										Data di nascita (dd-mm-yyyy):
										<h:inputText value="#{customerController.dateOfBirth}"
											required="true" requiredMessage="campo obbligatorio"
											id="dateOfBirth">
											<h:message for="dateOfBirth" />
											<f:convertDateTime pattern="dd-mm-yyyy" />
										</h:inputText>
									</div>
								</td>
							</tr>
														<br>
							
							<tr>
								<td>
									<div>
										Telefono:
										<h:inputText value="#{administratorController.phoneNumber}"
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
										Via/Piazza:
										<h:inputText value="#{administratorController.street}"
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
										<h:inputText value="#{administratorController.zipcode}"
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
										<h:inputText value="#{administratorController.city}"
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
										<h:inputText value="#{administratorController.country}"
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
										<h:inputText value="#{administratorController.state}"
											required="true" requiredMessage="campo obbligatorio"
											id="address_state" />
										<h:message for="address_state" />
									</div>
								</td>
							</tr>
							<p></p>
							<p></p>
							<p></p>
							<tr>
								<td>
									<div>
										<h:commandLink id="submit"
											action="#{administratorController.createCustomer}"
											styleClass="btn btn-success">
											<i class="icon-search"></i>
											<span class="glyphicon glyphicon-ok"></span> Registrame
								</h:commandLink>

									</div>
								</td>
							</tr>
						</h:form>
						<p></p>
						<p></p>
						<p></p>
						<a href='<c:url value="/faces/administratorPage.jsp" />'
							class="btn btn-default"><span
							class="glyphicon glyphicon-home"></span>Torna all'area riservata</a>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
