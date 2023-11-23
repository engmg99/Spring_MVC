<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<!-- importing another jsp file -->
</head>

<body>
	<%@include file="./navbar.jsp"%>

	<h3>Data Successfully Posted</h3>
	<h2>Welcome ${email},</h2>
	<h2>Your Password is ${pass}</h2>
	<h2>You opted for ${check}</h2>
</body>
</html>