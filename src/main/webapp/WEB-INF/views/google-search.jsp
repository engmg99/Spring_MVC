<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap File -->
<%@include file="./base.jsp"%>

</head>

<body>
	<%@include file="./navbar.jsp"%>
	<div class="container">
		<div class="card mx-auto mt-5 bg-success" style="width: 500px">
			<div class="card-body py-5">
				<h3 class="text-center text-white mt-3">Search Here</h3>
				<form action="initiateSearch" method="get" class="mt-5">
					<div class="form-group text-center">
						<input type="text" name="searchBox" class="form-control"
							placeholder="Enter your keyword">
					</div>
					<div class="container text-center mt-3">
						<button class="btn btn-outline-light">Search</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>