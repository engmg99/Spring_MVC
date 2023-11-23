<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<!-- importing another jsp file -->
</head>
<body>
	<%@include file="./navbar.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h1 class="text-center mb-3">Product details</h1>

						<form action="${pageContext.request.contextPath}/v1/api/product/add-product" name="product" method="post">

							<div class="form-group">
								<label for="exampleInputEmail">Name</label> <input name="name"
									type="text" class="form-control" id="exampleInputEmail"
									aria-describedby="emailhelp" placeholder="Enter Product Name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Description</label> <input
									name="description" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailhelp"
									placeholder="Enter Product Description">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Price</label> <input name="price"
									type="text" class="form-control" id="exampleInputEmail"
									aria-describedby="emailhelp" placeholder="Enter price">
							</div>

							<div class="container text-center my-2">
								<a href="${pageContext.request.contextPath}/v1/api/product/"
									class="btn btn-outline-danger">Back</a>
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>