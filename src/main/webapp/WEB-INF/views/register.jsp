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
				<li class="nav-item"><a class="nav-link" href="#">Admin
						Login</a></li>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid  p-0">
		<div class="row">
			<div class="col-3 col-md-2 bg-dark mh-100">

				<h3 style="color: white;"><a href="getAll">Dashboard</a></h3>
				<ul class="emp-side">
					<li><a href="getAll">Employees</a></li>
					<li><a href="viewLeaves">Leaves</a></li>
					<li><a href="register">Create employee</a></li>
					<li><a href="register">Approved Leaves</a></li>
					<li><a href="#">View account details</a></li>
				</ul>

			</div>
			<div class="col-9 col-md-9 bg-light mh-100 mw-100">
						<div class="jumbotron">

			<div class="container fuid">
				<h4 class="display-5">Create New Employee</h4>
				<hr class="my-4">
				<form action="createAccount" method="post">
					<div class="form-group">
						<label for="fname">First Name</label>
						<div class="col-8">
							<input type="text" class="form-control" id="fname"
								name="firstname" placeholder="Enter first name">
						</div>
					</div>
					<div class="form-group">
						<label for="lname">Last Name</label>
						<div class="col-8">
							<input type="text" class="form-control" id="lname"
								name="lastname" placeholder="Enter last name">
						</div>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<div class="col-8">
							<input type="text" class="form-control" id="email" name="email"
								placeholder="Enter your email">
						</div>
					</div>
					<div class="form-group">
						<label for="jobTitle">Job Title</label>
						<div class="col-8">
							<input type="text" class="form-control" id="jobTitle"
								name="title" placeholder="Enter job title">
						</div>
					</div>
					<div class="form-group">
						<label for="jgrade">Job Grade</label>
						<div class="col-8">
							<input type="text" class="form-control" id="jgrade"
								name="jobGrade" placeholder="Enter job grade">
						</div>
					</div>
					<div class="form-group">
						<label for="personalNumber">Personal Number</label>
						<div class="col-8">
							<input type="text" class="form-control" id="personalNumber"
								name="personalNumber" placeholder="Enter personal number">
						</div>
					</div>
					<div class="form-group">
						<label for="dept">Department</label>
						<div class="col-8">
							<input type="text" class="form-control" id="dept"
								name="department" placeholder="Enter your department">
						</div>
					</div>
					<div class="form-group">
						<label for="station">Station</label>
						<div class="col-8">
							<input type="text" class="form-control" id="station"
								name="station" placeholder="Enter where you are based">
						</div>
					</div>
					<div class="form-group">
						<label for="dateJoined">Date of joining</label>
						<div class="col-8">
							<input type="text" class="form-control" id="dateJoined"
								name="dateOfJoining" placeholder="Enter the date you joined">
						</div>
					</div>
					<div class="form-group">
						<label for="annualLeave">Annul Leave days</label>
						<div class="col-8">
							<input type="hidden" class="form-control" id="annual_leave_days"
								name="annual_leave_days" value="24">
						</div>
					</div>
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
			</form>
		</div>
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