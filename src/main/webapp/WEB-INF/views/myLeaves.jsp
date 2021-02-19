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
.emp-side li a{
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
            
                <h5 style="color: white;"><a href="emp-dashboard">Employee Dashboard</a></h5>
                <ul class="emp-side">
                	<li><a href="#">View Leaves</a></li>
                	<li><a href="#">View account details</a></li>
                </ul>
           
        </div>
        <div class="col-9 col-md-9 bg-light mh-100">
           	<h3>Leaves you have apllied</h3>
				
			
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Name</th>
							<th scope="col">Applicant Email</th>
							<th scope="col">Days Requested</th>
							<th scope="col">Leave Type</th>
							<th scope="col">Leave Start Date</th>
							<th scope="col">Leave End Date</th>
							<th scope="col">Leave status</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employee.leaves}" var="leave">
					<tr>
						<td><c:out value="${employee.leaves}" /></td>
						<td><c:out value="${employee.firstName}" /></td>
						<td><c:out value="${leave.leave_type}" /></td>
						<td><c:out value="${leave.days_requested}" /></td>
						<td><c:out value="${leave.leave_type}" /></td>
						<td><c:out value="${leave.leave_start_date}" /></td>
						<td><c:out value="${leave.leave_end_date}" /></td>
						<td><c:out value="${leave.leave_status}" /></td>
						<td>
							<a class="btn btn-warning btn-sm" type="button"  href="viewLeave?leave_id=${leave.leave_id}">View</a> 					
						</td>
					</tr>
						</c:forEach>
					</tbody>
				</table>
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