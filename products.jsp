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
	<f:view>
		<h1>Catalogo prodotti de Roma nostra:</h1>
		<h:form>
			<table>
				<tr>
					<th>Nome</th>
					<th>Prezzo</th>
					<th>Quantità</th>
				</tr>
				<c:forEach var="product" items="#{productController.products}">
					<tr>
						<td><h:commandLink action="#{productController.findProduct}"
								value="#{product.name}">
								<f:param name="id" value="#{product.id}" />
							</h:commandLink></td>
						<td>${product.price}</td>
						<td>${product.quantity}</td>
					</tr>
				</c:forEach>
			</table>
		</h:form>

		<br>
		<c:if test="${orderController.currentOrder != null}">
			<p>
				<a href='<c:url value="/faces/order.jsp" />'><c:out
						value="Torna all'ordine" /></a>
			<p>
		</c:if>

		<a href='<c:url value="/faces/customerPage.jsp" />'>Torna
			nell'area riservata</a>

	</f:view>
</body>
</html>