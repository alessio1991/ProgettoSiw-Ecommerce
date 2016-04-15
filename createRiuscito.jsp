<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Registrazione riuscita</title>
 <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap theme -->
  <link href="css/bootstrap-theme.min.css" rel="stylesheet">
  
</head>
<body>
	<f:view>
		<h1>Registrazione riuscita</h1>
		<h:form>
							<a href='<c:url value="/faces/customerPage.jsp" />'
								class="btn btn-info"><span class="glyphicon glyphicon-home"></span>
								Vai
					nella tua area personale</a>

						</h:form>
	</f:view>
</body>
</html>