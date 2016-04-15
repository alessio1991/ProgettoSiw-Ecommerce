<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
<head>
<title>Info prodotto</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">

</head>
<body>
<body style="background-color: #9966FF">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h2>${productController.product.name}</h2>
						<h5>Dettagli prodotto</h5>
						<div>
							<h4>Codice: ${productController.product.code}</h4>
						</div>
						<div>
							<h4>Prezzo: ${productController.product.price}</h4>
						</div>
						<div>
							<h4>Quantità: ${productController.product.quantity}</h4>
						</div>
						<div>
							<h4>Descrizione: ${productController.product.description}</h4>
						</div>

						<c:if test="${not empty productController.product.providers}">
							<div>
								Fornitore/i:
								<h:selectOneListbox id="listProvider">
									<c:forEach var="provider"
										items="#{productController.product.providers}">
										<f:selectItem itemLabel="#{provider.name}" />
									</c:forEach>
								</h:selectOneListbox>
							</div>
						</c:if>

						<p></p>
						<c:if
							test="${customerController.currentCustomer != null && currentOrder.chiuso == true}">
							<h:form>
								<h:commandLink id="returnCatalogo"
									action="#{productController.listCustomerProducts}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-th"></span> Torna ar catalogo
								</h:commandLink>
							</h:form>
						</c:if>
						<c:if
							test="${customerController.currentCustomer == null && currentOrder == null && administratorController.currentAdministrator == null}">
							<h:form>
								<h:commandLink id="returnCatalogo"
									action="#{productController.listProducts}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-th"></span> Torna ar catalogo
								</h:commandLink>
							</h:form>
						</c:if>
						<c:if
							test="${currentOrder != null && currentOrder.chiuso == false}">
							<p>
								<h:form>
									<div>
										quanti ne voi?
										<h:inputText value="#{orderController.quantity}"
											required="true" requiredMessage="campo obbligatorio"
											converterMessage="la quantita' deve essere un valore numerico"
											size="3" id="quantity" />

										<h:message for="quantity" />
									</div>
									<h:commandLink id="addOrderLine"
										action="#{orderController.addOrderLine}"
										styleClass="btn btn-success">
										<i class="icon-search"></i>
										<span class="glyphicon glyphicon-shopping-cart"></span> Aggiungi al carrello
								</h:commandLink>
								</h:form>
							<p>
								<h:form>
									<h:commandLink id="returnCatalogo"
										action="#{productController.listCustomerOrderProducts}"
										styleClass="btn btn-default">
										<i class="icon-search"></i>
										<span class="glyphicon glyphicon-th"></span> Torna ar catalogo
								</h:commandLink>
								</h:form>
						</c:if>

						<c:if
							test="${customerController.currentCustomer != null && currentOrder == null}">
							<h:form>
								<h:commandLink id="returnCatalogo"
									action="#{productController.listCustomerProducts}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-th"></span> Torna ar catalogo
								</h:commandLink>
							</h:form>
						</c:if>

						<c:if
							test="${administratorController.currentAdministrator != null}">
							<p>
								<h:form>
									<h:commandLink id="modifyProduct"
										action="#{administratorController.modifyProduct}"
										styleClass="btn btn-warning">
										<i class="icon-search"></i>
										<span class="glyphicon glyphicon-pencil"></span> Modifica
								</h:commandLink>
								</h:form>
							<p>
								<h:form>
									<h:commandLink id="returnCatalogo"
										action="#{productController.listAdministratorProducts}"
										styleClass="btn btn-default">
										<i class="icon-search"></i>
										<span class="glyphicon glyphicon-th"></span> Torna ar catalogo
								</h:commandLink>
								</h:form>
						</c:if>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>


</html>