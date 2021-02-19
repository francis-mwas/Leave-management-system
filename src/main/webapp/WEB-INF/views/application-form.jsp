<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<style type="text/css">
.style-nav {
	background-color: #026bc7;
}

nav .navbar-nav li a {
	color: white !important;
	font-size: 18px;
}

.navbar-brand {
	color: whitesmoke !important;
}

.emp-side li a {
	color: #fff;
}
</style>

<title>Leave App</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light style-nav">
		<a class="navbar-brand" href="index.jsp">Leave App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="nav navbar-nav ml-auto style-menu-list">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="apply">Apply
						Leave</a></li>
				<li class="nav-item"><a class="nav-link" href="apply">Log Out</a></li>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid  p-0">
		<div class="row">
			<div class="col-3 col-md-2 bg-dark mh-100">

				<h5 style="color: white;"><a href="emp-dashboard">Employee Dashboard</a></h5>
				<ul class="emp-side">
					<li><a href="#">View account details</a></li>
				</ul>

			</div>
			<div class="col-9 col-md-9 bg-light mh-100">
				<h5 class="display-5 py-3">Please fill the details below to apply
					for a leave, All field marked with asterik are required </h5>
				
				<hr class="my-4">
				<form action="apply-leave" method="POST">
					<div class="form-group">
						<label for="fname">First Name</label>
						<div class="col-8">
							<input type="text" class="form-control" id="fname"
								placeholder="Enter first name" value="${employee.firstName}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="lname">Last Name</label>
						<div class="col-8">
							<input type="text" class="form-control" id="lname"
								placeholder="Enter last name" value="${employee.lastName}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<div class="col-8">
							<input type="text" class="form-control" id="email"
								placeholder="Enter your email" value="${employee.email}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="jobTitle">Job Title</label>
						<div class="col-8">
							<input type="text" class="form-control" id="jobTitle"
								placeholder="Enter job title" value="${employee.title}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="jgrade">Job Grade</label>
						<div class="col-8">
							<input type="text" class="form-control" id="jgrade"
								placeholder="Enter job grade" value="${employee.jobGrade}" readonly>
						</div>
					</div>
					
					<div class="form-group">
						<label for="personalNumber">Personal Number</label>
						<div class="col-8">
							<input type="text" class="form-control" id="personNumber"
								placeholder="Enter personal number"
								value="${employee.personNumber}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="dept">Department</label>
						<div class="col-8">
							<input type="text" class="form-control" id="dept"
								placeholder="Enter your department"
								value="${employee.department}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="station">Station</label>
						<div class="col-8">
							<input type="text" class="form-control" id="station"
								placeholder="Enter where you are based"
								value="${employee.station}" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="dateJoined">Date of joining</label>
						<div class="col-8">
							<input type="text" class="form-control" id="dateJoined"
								placeholder="Enter the date you joined"
								value="${employee.dateOfJoining}" readonly>
						</div>
					</div>

					<div class="form-group">
						<label for="lastLeaveDay">Last day leave was taken</label>
						<div class="col-8">
							<input type="text" class="form-control" id="lastLeaveDay"
								placeholder="Last day leave was taken" name="lastLeaveDay" />
						</div>
					</div>
					<input type="hidden" name="emp_id" value="${ employee.emp_id }" />
					<div class="form-group">
						<label for="daysRequested">Days you are requesting</label>
						<div class="col-8">
							<input type="text" class="form-control" id="daysRequested"
								placeholder="Days you are requesting" name="daysRequested">
						</div>
					</div>
					<div class="form-group">
						<label for="leaveType">Leave type</label>
						<div class="col-8">
							<select id="leaveType" class="form-control" name="leaveType">
								<option selected>Choose...</option>
								<option value="Sick Leave">Sick Leave</option>
								<option value="Maternity Leave">Maternity Leave</option>
								<option value="Emergency Leave">Emergency Leave</option>
								<option value="Annual Leave">Annual Leave</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="startDate">Leave start date</label>
						<div class="col-8">
							<input type="text" class="form-control" id="startDate"
								placeholder="Leave start date" name="startDate">
						</div>
					</div>
					<div class="form-group">
						<label for="endDate">Leave end date</label>
						<div class="col-8">
							<input type="text" class="form-control" id="endDate"
								placeholder="Leave end date" name="endDate">
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			
			</form>
		</div>
	</div>
	</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>