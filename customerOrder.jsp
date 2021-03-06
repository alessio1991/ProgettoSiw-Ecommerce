<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Info ordine</title>
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

						<h2>L'ordine ner dettajo!</h2>
						<div>ID ordine: ${currentOrder.id}</div>

						<div>
							Creato il:
							<h:outputText value="#{currentOrder.creationTime}">
								<f:convertDateTime dateStyle="medium" locale="it_IT" type="date" />
							</h:outputText>
						</div>

						<div>
							<c:choose>
								<c:when test="${currentOrder.chiuso == false}">Stato: Aperto</c:when>
								<c:otherwise>
		Stato: Completato
		</c:otherwise>
							</c:choose>
						</div>

						<c:if test="${currentOrder.completedTime != null }">
							<div>
								Data completamento:
								<h:outputText value="#{currentOrder.completedTime}">
									<f:convertDateTime dateStyle="medium" locale="it_IT"
										type="date" />
								</h:outputText>
							</div>
						</c:if>

						<div>
							<c:choose>
								<c:when test="${currentOrder.evaso == false}">Evaso: NO</c:when>
								<c:otherwise>
		Evaso: SI
		</c:otherwise>
							</c:choose>
						</div>

						<c:if test="${currentOrder.processedTime != null }">
							<div>
								Data evasione:
								<h:outputText value="#{currentOrder.processedTime}">
									<f:convertDateTime dateStyle="medium" locale="it_IT"
										type="date" />
								</h:outputText>
							</div>
						</c:if>

						<br>
						<h3>${orderController.message}</h3>

						<c:if test="${not empty currentOrder.orderLines}">
							<h4>Dettaglio:</h4>
							<h:form>
								<table>
									<tr>
										<th>Codice</th>
										<th>Nome</th>
										<th>Prezzo</th>
										<th>Quantit�</th>
									</tr>

									<c:forEach var="orderLine" items="#{currentOrder.orderLines}">
										<tr>
											<td><h:commandLink
													action="#{productController.findProduct}"
													value="#{orderLine.product.code}">
													<f:param name="id" value="#{orderLine.product.id}" />
												</h:commandLink></td>
											<td>${orderLine.product.name}</td>
											<td>${orderLine.unitPrice}</td>
											<td>${orderLine.quantity}</td>
										</tr>
									</c:forEach>
								</table>
							</h:form>
						</c:if>

						<c:if test="${currentOrder.chiuso == false}">

							<h:form>
								<h:commandLink id="orderCatalogo"
									action="#{productController.listCustomerOrderProducts}"
									styleClass="btn btn-default">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-euro"></span> Iniziamo a compr�!
								</h:commandLink>
							</h:form>
							<br>
							<h:form>
								<h:commandLink id="closeOrder"
									action="#{orderController.closeOrder}"
									styleClass="btn btn-info">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-saved"></span> Chiudi ordine
								</h:commandLink>
							</h:form>
							<br>
						</c:if>

						<c:if
							test="${administratorController.currentAdministrator != null && currentOrder.chiuso == true && currentOrder.evaso == false}">
							<h:form>
								<h:commandLink id="returnCatalogo"
									action="#{orderController.processedOrder}"
									styleClass="btn btn-info">
									<i class="icon-search"></i>
									<span class="glyphicon glyphicon-open"></span> Evadi ordine
								</h:commandLink>
							</h:form>

							<a href='<c:url value="/faces/administratorPage.jsp" />'
								class="btn btn-default"><span
								class="glyphicon glyphicon-home"></span>Torna nell'area
								amministrazione</a>
						</c:if>
						<c:if test="${customerController.currentCustomer != null}">
							<a href='<c:url value="/faces/customerPage.jsp" />'
								class="btn btn-default"><span
								class="glyphicon glyphicon-home"></span>Torna nella tua area
								riservata</a>
						</c:if>
					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>