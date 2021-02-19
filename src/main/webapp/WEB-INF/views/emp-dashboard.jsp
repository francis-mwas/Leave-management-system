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

				<h5 style="color: white;">
					<a href="myProfile">Employee Dashboard</a>
				</h5>
				<ul>
					<li><a href="#">Account Settings</a></li>
				</ul>

			</div>
			<div class="col-9 col-md-9 bg-light mh-100">
				<h3>Profile Details</h3>

				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">First name</th>
							<th scope="col">Title</th>
							<th scope="col">Email</th>
							<th scope="col">PersonaL number</th>
							<th scope="col">Station</th>
							<th scope="col">Date Joined</th>
							<th scope="col">Department</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><c:out value="${employee.emp_id }" /></td>
							<td><c:out value="${employee.firstName }" /></td>
							<td><c:out value="${employee.title}" /></td>
							<td><c:out value="${employee.email}" /></td>
							<td><c:out value="${employee.personNumber}" /></td>
							<td><c:out value="${employee.station}" /></td>
							<td><c:out value="${employee.dateOfJoining}" /></td>
							<td><c:out value="${employee.department}" /></td>
						</tr>
					</tbody>
				</table>

				<c:forEach items="${employee.leaves}" var="leave">
					<ul class="list-group">
						<li class="list-group-item active" aria-current="true">Your Leave Detail</li>
						<li class="list-group-item">Last Day Leave Taken: 	<c:out value="${leave.last_day_leave_taken}" /></li>
						<li class="list-group-item">Days Requested:<c:out value="${leave.days_requested}" /> </li>
						<li class="list-group-item">Leave Type Applied: <c:out value="${leave.leave_type}" /></li>
						<li class="list-group-item">Leave Start Date: <c:out value="${leave.leave_start_date}" /></li>
						<li class="list-group-item">Leave End Date: <c:out value="${leave.leave_end_date}" /></li>
						<li class="list-group-item">Annual Entitled Leave Days: <span class="badge badge-secondary"> <c:out value="${leave.annual_leave_days}" /></span></li>
						<li class="list-group-item">Leave Balance: <c:out value="${leave.l_bal}" /></li>
						<li class="list-group-item">Leave Status: <c:out value="${leave.leave_status}" /></li>
						<li class="list-group-item">Leave Remarks: <c:out value="${leave.leave_comments}" /></li>
						<td><a class="btn btn-danger" type="button btn-success my-3" role="button" href="downloadPdf?emp_id=${employee.emp_id}">Download this leave report</a></td>
					</ul>
				</c:forEach>
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