<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<!-- importing another jsp file -->
</head>

<body style="background: #e2e2e2;">
	<%@include file="./navbar.jsp"%>
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<div class="alert alert-danger" role="alert">
							<form:errors path="student.*" />
						</div>
						<h3 class="text-center">Create Student</h3>

						<form action="handle-create-student" name="student" method="post">

							<div class="form-group">
								<label for="exampleInputEmail">Your Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailhelp"
									placeholder="Enter Name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Your Id</label> <input name="id"
									type="text" class="form-control" id="exampleInputEmail"
									aria-describedby="emailhelp" placeholder="Enter ID">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Your DOB</label> <input
									name="dob" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailhelp"
									placeholder="dd/mm/yyyy">
							</div>

							<div class="form-group">
								<label for="exampleFormControlSelect1">Select Courses</label> <select
									name="courses" class="form-control"
									id="exampleFormControlSelect1" multiple>

									<option>Java</option>
									<option>Phython</option>
									<option>C++</option>
									<option>Spring</option>
									<option>Hibernate</option>

								</select>
							</div>

							<div class="form-group">
								<span class="mr-3">Select Gender</span>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="inlineRadio1" value="male"><label
										class="form-check-label" for="inlineRadio1">Male</label>
								</div>

								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="inlineRadio2" value="female"><label
										class="form-check-label" for="inlineRadio2">Female</label>
								</div>
							</div>

							<div class="form-group">
								<label for="">Select Type</label> <select class="form-control"
									name="studentType">
									<option value="oldstudent">Old Student</option>
									<option value="normalstudent">Normal Student</option>
								</select>
							</div>

							<div class="card my-2">
								<div class="card-body">
									<p>Your Address</p>
									<div class="form-group">
										<input class="form-control my-2" type="text" name="address.street"
											placeholder="Enter Street" />
									</div>
									<div class="form-group">
										<input class="form-control my-2" type="text" name="address.city"
											placeholder="Enter City" />
									</div>
								</div>
							</div>

							<div class="container text-center my-2">
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