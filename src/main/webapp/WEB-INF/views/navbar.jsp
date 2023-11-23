<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/v1/api/product/">Product Management</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarText"
				aria-controls="navbarText" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${pageContext.request.contextPath}/v1/api/product/">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						aria-current="page" href="${pageContext.request.contextPath}/v1/api/about">About</a></li>
					<li class="nav-item"><a class="nav-link"
						aria-current="page" href="${pageContext.request.contextPath}/v1/api/contact">Contact Us</a></li>
					<li class="nav-item"><a class="nav-link"
						aria-current="page" href="${pageContext.request.contextPath}/v1/api/product/add">Add Product</a></li>
					<li class="nav-item"><a class="nav-link"
						aria-current="page" href="${pageContext.request.contextPath}/v1/api/googleSearch">Google Search</a></li>
					<li class="nav-item"><a class="nav-link"
						aria-current="page" href="${pageContext.request.contextPath}/v1/api/create-student">Create Student</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>