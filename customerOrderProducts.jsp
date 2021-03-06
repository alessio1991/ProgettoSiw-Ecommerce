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
<body style="background-color: #1050E0">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<!-- maschera intorno la form -->
				<div class="jumbotron">
					<f:view>
						<h1>Catalogo prodotti</h1>
						<h3>Clicca sui prodotti per aggiungerli all'ordine</h3>
						<h:form>
							<table>
								<tr>
									<th><font size=4>Nome</font></th>
									<th><font size=4>Prezzo</font></th>
									<th><font size=4>Quantita</font></th>
								</tr>
								<c:forEach var="product" items="#{productController.products}">
									<tr>
										<td><font size=5><h:commandLink
													action="#{productController.findProduct}"
													value="#{product.name}">
													<f:param name="id" value="#{product.id}" />
												</h:commandLink></font></td>
										<td><font size=5>${product.price}</font></td>
										<td><font size=5>${product.quantity}</font></td>
								</c:forEach>
							</table>
							<a href='<c:url value="/faces/customerOrder.jsp" />'
								class="btn btn-default"><span
								class="glyphicon glyphicon-th-list"></span>Torna all'ordine</a>
							<a href='<c:url value="/faces/customerPage.jsp" />'
								class="btn btn-default"><span
								class="glyphicon glyphicon-home"></span>Torna alla tua area
								riservata</a>
						</h:form>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>


</html>