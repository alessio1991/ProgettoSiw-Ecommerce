<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Inserimento nuovo prodotto</title>
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
						<h2>Inserimento nuovo prodotto</h2>
						<h:form>
							<div>
								Nome:
								<h:inputText value="#{productController.name}" required="true"
									requiredMessage="campo obbligatorio" id="name" />
								<h:message for="name" />
							</div>
							<br>
							<div>
								Codice:
								<h:inputText value="#{productController.code}" required="true"
									requiredMessage="campo obbligatorio" id="code" />
								<h:message for="code" />
							</div>
							<br>
							<div>
								Prezzo:
								<h:inputText value="#{productController.price}" required="true"
									requiredMessage="campo obbligatorio"
									converterMessage="il prezzo deve essere un valore numerico positivo"
									id="price" />
								<h:message for="price" />
							</div>
							<br>
							<div>
								Quantita':
								<h:inputText value="#{productController.quantity}"
									required="true" requiredMessage="campo obbligatorio"
									converterMessage="la quantita' deve essere un valore numerico positivo"
									id="quantity" />
								<h:message for="quantity" />
							</div>
							<br>
							<div>
								Descrizione:
								<h:inputTextarea value="#{productController.description}"
									required="false" cols="20" rows="5" />
							</div>
							<br>
							<div>
								Fornitore:
								<h:selectOneMenu value="#{productController.productName}"
									required="true" requiredMessage="seleziona un fornitore"
									id="providerName">
									<c:forEach var="provider"
										items="#{administratorController.providers}">
										<f:selectItem itemValue="#{provider.name}"
											itemLabel="#{provider.name}" />
									</c:forEach>
								</h:selectOneMenu>
								<h:message for="providerName" />
							</div>
							<br>
							<div>
								<h:commandLink id="submit"
									action="#{productController.createProduct}"
									styleClass="btn btn-success">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-ok"></span> Inserisci
								</h:commandLink>
							</div><br>
							<a href='<c:url value="/faces/administratorPage.jsp" />'
								class="btn btn-default"><span
								class="glyphicon glyphicon-home"></span>Torna all'area riservata</a>

						</h:form>
					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>