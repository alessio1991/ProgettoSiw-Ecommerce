<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Inserimento prodotto non riuscito</title>
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
						<h1>Inserimento prodotto non riuscito</h1>
						<h2>Codice prodotto gi� registrato</h2>
						<h:form>
							<a href='<c:url value="/faces/newProduct.jsp" />'
								class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>
								Riprova l'inserimento</a>

						</h:form>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>