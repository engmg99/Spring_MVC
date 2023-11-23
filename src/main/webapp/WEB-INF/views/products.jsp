<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html lang="en">

<head>
<!-- Bootstrap File -->
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>
	<%@include file="./navbar.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1>Welcome To Product App</h1>
			</div>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">S.No</th>
					<th scope="col">Product Name</th>
					<th scope="col">Description</th>
					<th scope="col">Price</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="p" varStatus="loop">
					<tr>
						<th scope="row">${loop.index+1}</th>
						<td>${p.name}</td>
						<td>${p.description}</td>
						<th scope="row">&#x20B9; ${p.price}</th>
						<td><a
							href="${pageContext.request.contextPath}/v1/api/product/update/${p.id}"
							class="btn btn-primary">Update</a> <a
							href="${pageContext.request.contextPath}/v1/api/product/delete-product/${p.id}"
							class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>