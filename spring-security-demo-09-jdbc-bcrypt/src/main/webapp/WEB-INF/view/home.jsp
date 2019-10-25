<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<title>Welcome to the Company Home Page</title>
</head>
<body>
	<h2>luv2code Company Home Page</h2>
	<br> Welcome to the Company Home Page
	<br>

	<hr>

	<!-- Display user name and role -->
	User:
	<security:authentication property="principal.username" />
	<br>
	<br> Role(s):
	<security:authentication property="principal.authorities" />
	
	<hr>

	<hr>
	<!-- Add a link to point to /leaders. Block of code between security tags will only show if user is a manager-->
	<security:authorize access="hasRole('MANAGER')">

		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership
				Meeting</a> (Only for manager peeps)
		</p>
	</security:authorize>

	<!-- Add a link to point to /systems ... block of code will only show for admins -->
	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">Systems
				Administration</a> (Only for admin peeps)

		</p>
	</security:authorize>

	<hr>


	<!--  Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<input type="submit" value="Logout" />

	</form:form>

</body>
</html>