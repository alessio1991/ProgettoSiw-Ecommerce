<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Catalogo prodotti</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="css/bootstrap-theme.min.css" rel="stylesheet">

</head>
<body>
<body style="background-color: #00A86B">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h2 align="center">Catalogo prodotti de Roma nostra</h2>
						<br>
						<h:form>
							<div>
								<h3>Sto a vede che non sei registrato, che stai ad aspettà?! Fallo <a
									href='<c:url value="/faces/customerRegistration.jsp" />'>qui</a>
								o <a href='<c:url value="/faces/loginUtente.jsp" />'>accedi</a>
								se gia sei dei nostri!</h3>
							</div>
							<br>
							<table cellspacing="40">
								<tr>
									<th><font size=4>Nome</font></th>
									<th><font size=4>Prezzo</font></th>
								</tr>
								<c:forEach var="product" items="#{productController.products}">
									<tr>
									<td><font size = 5>	<h:commandLink
												action="#{productController.findProduct}"
												value="#{product.name}">
												<f:param name="id" value="#{product.id}" />
											</h:commandLink></font></td>
										<td><font size = 5>	${product.price}</font></td>
									</tr>
								</c:forEach>
							</table>
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