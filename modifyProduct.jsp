<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Modifica er prodotto!</title>
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
							<div>
								Nome:
								<h:inputText value="#{productController.product.name}"
									required="true" requiredMessage="campo obbligatorio" id="name" />
								<h:message for="name" />
							</div>
							<br>
							<div>
								Codice:
								<h:inputText value="#{productController.product.code}"
									required="true" requiredMessage="campo obbligatorio" id="code" />
								<h:message for="code" />
							</div>
							<br>
							<div>
								Prezzo:
								<h:inputText value="#{productController.product.price}"
									required="true" requiredMessage="campo obbligatorio"
									converterMessage="il prezzo deve essere un valore numerico positivo"
									id="price" />
								<h:message for="price" />
							</div>
							<br>
							<div>
								Quantita':
								<h:inputText value="#{productController.product.quantity}"
									required="true" requiredMessage="campo obbligatorio"
									converterMessage="la quantita' deve essere un valore numerico positivo"
									id="quantity" />
								<h:message for="quantity" />
							</div>
							<br>
							<div>
								Descrizione:
								<h:inputTextarea
									value="#{productController.product.description}"
									required="false" cols="20" rows="5" />
							</div>
							<br>

							<div>
								<h:commandLink id="submit"
									action="#{productController.updateProduct}"
									styleClass="btn btn-success">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-ok"></span> Salva
								</h:commandLink>
							</div>
						</h:form>

						<br>
						<c:if test="${not empty currentProduct.providers}">
							<div>
								Fornitore/i:
								<h:form id="removeProviderMenu">
									<h:selectOneListbox id="listProvider"
										value="#{productController.providerNameDelete}"
										required="true"
										requiredMessage="Seleziona fornitore prima di rimuoverlo">
										<c:forEach var="provider" items="#{currentProduct.providers}">
											<f:selectItem itemValue="#{provider.name}"
												itemLabel="#{provider.name}" />
										</c:forEach>
									</h:selectOneListbox>
									<h:commandButton id="addProvider" value="Rimuovi fornitore"
										action="#{productController.removeProvider}" />
									<h:message for="listProvider" />
								</h:form>
							</div>
						</c:if>

						<br>
						<c:if test="${not empty providersProduct}">
							<div>
								Aggiungi un nuovo fornitore:
								<h:form id="addProviderMenu">
									<h:selectOneMenu value="#{productController.providerName}">
										<c:forEach var="provider" items="#{providersProduct}">
											<f:selectItem itemValue="#{provider.name}"
												itemLabel="#{provider.name}" />
										</c:forEach>
									</h:selectOneMenu>
									<h:commandButton id="addProvider" value="Aggiungi e salva"
										action="#{productController.addProvider}" />
									<h:message for="addProvider" />
								</h:form>
							</div>
						</c:if>
					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>