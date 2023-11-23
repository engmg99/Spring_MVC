<%@page isELIgnored="false"%>
<html>
<head>
<!-- Bootstrap File -->
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<%@include file="./navbar.jsp"%>
	<h3>First MVC project Index JSP</h3>
	<%
	String name = (String) request.getAttribute("name");
	Integer id = (Integer) request.getAttribute("Id");
	%>
	<h1>Name is ${name}</h1>
	<h1>Id is ${Id}</h1>
	<h1>
		<%=name%>
	</h1>
	<h1>
		<%=id%>
	</h1>
</body>
</html>
