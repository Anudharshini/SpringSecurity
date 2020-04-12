<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>My Practice - Spring Security</h2>
	<hr>Welcome to the my Spring Security demo page!
	<br>
	<br>
	<hr>
	<!-- Display user name and role -->
	<p>User: <security:authentication property="principal.username"/><br><br>
	   Roles: <security:authentication property="principal.authorities"/>
	</p>
	<hr>
	<!-- add link to point to /leaders....this is for managers -->
	<security:authorize access="hasRole('MANAGER')" >
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>(Only for managers)
	
	</p>
	</security:authorize>
	<security:authorize access="hasRole('ADMIN')" >
	<!-- add link to point to /systems....this is for admins -->
	<p>
		<a href="${pageContext.request.contextPath}/systems">IT system meeting</a>(Only for Admins)
	
	</p>
	</security:authorize>
	<!-- logout -->
	<form:form action="${pageContext.request.contextPath}/logout" method="post">
		
		<input type="submit" value="logout"/>
	
	</form:form>
</body>

</html>