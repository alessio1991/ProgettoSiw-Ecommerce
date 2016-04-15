<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Dettagli di chi ce lo fornisce</title>
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
						<h2>${providerController.provider.name}</h2>
							<h5>Info fornitore
						</h5>
						<div>
							<h4>E-mail: ${providerController.provider.email}</h4>
						</div>
						<div>
							<h4>Telefono: ${providerController.provider.phoneNumber}</h4>
						</div>
						<div>
							<h4>Partita IVA: ${providerController.provider.vatin}</h4>
						</div>
						<div>
							<h4>CAP: ${providerController.provider.address.zipcode}</h4>
						</div>
						<div>
							<h4>Via/Piazza:
								${providerController.provider.address.street}</h4>
						</div>
						<div>
							<h4>Città: ${providerController.provider.address.city}</h4>
						</div>
						<div>
							<h4>Provincia:
								${providerController.provider.address.country}</h4>
						</div>
						<div>
							<h4>Stato: ${providerController.provider.address.state}</h4>
						</div>

						<div>
							<p></p>
							<br> <a
								href='<c:url value="/faces/administratorPage.jsp" />'
								class="btn btn-default"><span
								class="glyphicon glyphicon-home"></span>Torna alla tua area
								riservata</a>
						</div>

					</f:view>
				</div>
			</div>
		</div>
	</div>
</body>
</html>