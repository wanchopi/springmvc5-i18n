<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>index :: Formulario</title>
<link rel="stylesheet" href="public/css/bootstrap.min.css"> 
<link rel="stylesheet" href="public/css/mystyle.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12" align="center">
				<img alt="logo" src="public/images/bart-simpson.png">
			</div>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-offset-2 col-md-8">
			<h2 class="text-center title"><spring:message code="message.welcome"/></h2>
			<div class="card" align="left">
				<h5 class="card-title p-3 mb-2 text-light bg-dark"><spring:message code="message.title.form"/></h5>
				<div class="card-body">
					<form:form action="save" method="post" modelAttribute="student" cssClass="form-horizontal">
						<!-- user name -->
	     				<div class="form-group">
	      					<label for="username" class="col-md-3 control-label font-weight-bold">
	      						<spring:message code="message.field.name"/>
	      					</label>
	      					<div class="col-md-9">
		       					<form:input path="userName" type="text" cssClass="form-control" />
		       					<form:errors path="userName" cssClass="errors" />
	      					</div>
	     				</div>
	     				<!-- email -->
	     				<div class="form-group">
	      					<label for="email" class="col-md-3 control-label font-weight-bold">
	      						<spring:message code="message.field.email"/>
	      					</label>
	      					<div class="col-md-9">
		       					<form:input path="email" type="email" cssClass="form-control" />
		       					<form:errors path="email" cssClass="errors" />
	      					</div>
	     				</div>
	     				<!-- password -->
	     				<div class="form-group">
	      					<label for="password" class="col-md-3 control-label font-weight-bold">
	      						<spring:message code="message.field.password"/>
	      					</label>
	      					<div class="col-md-9">
		       					<form:input path="password" type="password" cssClass="form-control" />
		       					<form:errors path="password" cssClass="errors" />
	      					</div>
	     				</div>
						<!-- radiobutton responsive -->
						<div class="container form-group">
							<div class="row">
								<label for="gender" class="col-md-3 control-label font-weight-bold">
									<spring:message code="message.field.gender"/>
								</label>
							</div>
							<div class="row">
								<div class="col-lg-3">
									<form:radiobutton path="gender" value="Hombre"/>
									<label class="text-muted" for="male">
										<strong><spring:message code="message.field.gender.male"/></strong>
									</label>
								</div>
								<div class="col-lg-3">
									<form:radiobutton path="gender" value="Mujer"/>
									<label class="text-muted" for="female">
										<strong><spring:message code="message.field.gender.female"/></strong>
									</label>
								</div>
							</div>
							<form:errors path="gender" cssClass="errors" />
						</div>
	     				<!-- country -->
	     				<div class="form-group">
	     					<label for="country" class="col-md-3 control-label font-weight-bold">
	     						<spring:message code="message.field.country"/>
	     					</label>
	     					<div class="col-md-9">
	     						<form:select path="country" class="text-muted">
									<form:option value="" label="--- Select ---"/>
									<form:options items="${countryList}"/>
								</form:select>
							</div>
							<div class="col">
								<form:errors path="country" cssClass="errors" />
							</div>
						</div>
						<!-- favoriteFrameworks responsive -->
						<div class="container form-group">
							<div class="row">
								<label for="frameworks" class="col-md-9 control-label font-weight-bold">
									<spring:message code="message.field.frameworks"/>
								</label>
							</div>
							<div class="row">
								<c:forEach var="i" items="${frameworkList}">
									<div class="col-lg-3">
										<form:checkbox path="favoriteFrameworks" value="${i}"/>
										<label class="text-muted" for="male"><strong><c:out value="${i}"></c:out></strong></label> 
									</div>
								</c:forEach>
								<div class="col">
									<form:errors path="favoriteFrameworks" cssClass="errors" />
								</div>
							</div>
						</div>
						<!-- receivePaper -->
						<div class="container form-group">
							<div class="row">
								<div class="col-lg-4">
									<label for="receivePaper" class="control-label font-weight-bold">
										<spring:message code="message.field.newsletter"/>
									</label>
								</div>
								<div class="col-lg-4">
									<form:checkbox path = "receivePaper" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
								<form:button type="Submit" class="btn btn-primary">
									<spring:message code="message.field.btn"/>
								</form:button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery core JavaScript -->
    <script src="public/js/jquery.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script src="public/js/bootstrap.min.js"></script>
</body>
</html>