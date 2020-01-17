<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>success :: i18n</title>
<link rel="stylesheet" href="public/css/bootstrap.min.css"> 
<link rel="stylesheet" href="public/css/mystyle.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12" align="center">
				<img alt="logo" src="public/images/logo.png">
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-12" align="center">
				<h3><spring:message code="message.success"/></h3>
				<table class="table table-striped table-bordered">
					<thead align="center">
						<tr>
							<th scope="col"><spring:message code="message.field.name"/></th>
							<th scope="col"><spring:message code="message.field.email"/></th>
							<th scope="col"><spring:message code="message.field.gender"/></th>
							<th scope="col"><spring:message code="message.field.password"/></th>
							<th scope="col"><spring:message code="message.field.country"/></th>
							<th scope="col"><spring:message code="message.field.newsletter"/></th>
							<th scope="col"><spring:message text="Framework"/></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${student.userName}</td>
							<td>${student.email}</td>
							<td>${student.gender}</td>
							<td>${student.password}</td>
							<td>${student.country}</td>
							<td>
								<c:choose>
									<c:when test="${student.receivePaper==true}">
										accepted
									</c:when>
									<c:otherwise>
										denied
									</c:otherwise>
								</c:choose>
							</td>
							<td>
								<c:forEach items="${student.favoriteFrameworks}"  var="name" varStatus="status">
									<c:out value="${name}"></c:out>
									<c:if test="${!status.last}">,</c:if>
								</c:forEach>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<!-- jQuery core JavaScript -->
    <script src="public/js/jquery.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script src="public/js/bootstrap.min.js"></script>
</body>
</html>







