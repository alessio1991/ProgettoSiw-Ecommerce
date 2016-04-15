<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Lista ordini</title>
 <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap theme -->
  <link href="css/bootstrap-theme.min.css" rel="stylesheet">
  
</head>
<body>
<body style="background-color: #FF8020">
	<div class="container">
		<div class="row">
			
				<!-- maschera intorno la form -->
				<div class="jumbotron">
	<f:view>
		<h1>Lista ordini (Speramo siano tanti!)</h1>
		<h:form>
			<table>
				<tr>
					<th><font size=3>ID ordine</font></th>
					<th><font size=3>Cliente</font></th>
					<th><font size=3>Data creazione</font></th>
					<th><font size=3>Stato</font></th>
					<th><font size=3>Data completamento</font></th>
					<th><font size=3>Evaso</font></th>
					<th><font size=3>Data evasione</font></th>
					<th><font size=3>Sospeso</font></th>

				</tr>
				<c:forEach var="order" items="#{administratorController.orders}">
					<tr>
						<td><font size=4><h:commandLink action="#{orderController.findOrder}"
								value="#{order.id}">
								<f:param name="id" value="#{order.id}" />
							</h:commandLink></font></td>

						<td><font size=4>${order.customer.email}</font></td>

						<td><font size=4><h:outputText value="#{order.creationTime}">
								<f:convertDateTime dateStyle="medium" locale="it_IT" type="date" />
							</h:outputText></font></td>

						<td><font size=4><c:choose>
								<c:when test="${order.chiuso == false}">Aperto</c:when>
								<c:otherwise>
								Completato
								</c:otherwise>
							</c:choose></font></td>

						<td><font size=4><h:outputText value="#{order.completedTime}">
								<f:convertDateTime dateStyle="medium" locale="it_IT" type="date" />
							</h:outputText></font></td>

						<td><font size=4><c:choose>
								<c:when test="${order.evaso == false}">NO</c:when>
								<c:otherwise>
							SI
							</c:otherwise>
							</c:choose></font></td>

						<td><font size=4><h:outputText value="#{order.processedTime}">
								<f:convertDateTime dateStyle="medium" locale="it_IT" type="date" />
							</h:outputText></font></td>

						<td><font size=4><c:choose>
								<c:when test="${order.sospeso == true && order.evaso == false}">SI</c:when>
								<c:otherwise>
							NO
							</c:otherwise>
							</c:choose></font></td>
				</c:forEach>
			</table>
		</h:form>
		<p></p>
					<a href='<c:url value="/faces/administratorPage.jsp" />'
							class="btn btn-default"><span
							class="glyphicon glyphicon-home"></span>Torna alla tua area
							riservata</a>
	</f:view>
	</div></div></div>
</body>
</html>