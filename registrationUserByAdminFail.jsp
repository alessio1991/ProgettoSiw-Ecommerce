<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Registrazione non riuscita</title>
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
						<h1>Registrazione non riuscita</h1>
						<h:form>
							<br>
							<a href='<c:url value="/faces/administratorPage.jsp" />'
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