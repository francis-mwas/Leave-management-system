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

				<h3 style="color: white;">
					<a href="getAll">Dashboard</a>
				</h3>
				<ul class="emp-side">
					<li><a href="getAll">Employees</a></li>
					<li><a href="viewLeaves">Leaves</a></li>
					<li><a href="register">Create employee</a></li>
					<li><a href="register">Approved Leaves</a></li>
					<li><a href="#">View account details</a></li>
				</ul>

			</div>
			<div class="col-9 col-md-9 bg-light mh-100 mw-100">
				<h4>
					Leave Request From:
					<c:out value="${leave.employee.firstName}" />
				</h4>
				<div class="row">

					<div class="col-5">
						<div class="list-group" id="list-tab" role="tablist">

							<a class="list-group-item list-group-item-action active"
								id="list-home-list" data-toggle="list" href="#list-home"
								role="tab" aria-controls="home">Employee Information</a> <a
								class="list-group-item list-group-item-action"
								id="list-profile-list" data-toggle="list" href="#list-profile"
								role="tab" aria-controls="profile">First Name: <span
								class="badge badge-info"><c:out
										value="${leave.employee.firstName}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-messages-list" data-toggle="list" href="#list-messages"
								role="tab" aria-controls="messages">Last Name: : <span
								class="badge badge-info"><c:out
										value="${leave.employee.lastName}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Title: : <span
								class="badge badge-info"> <c:out
										value="${leave.employee.title}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Email: <span
								class="badge badge-info"><c:out
										value="${leave.employee.email}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Personal Number: <span
								class="badge badge-info"><c:out
										value="${leave.employee.personNumber}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Job Grade: <span
								class="badge badge-info"><c:out
										value="${leave.employee.jobGrade}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Station: <span
								class="badge badge-info"><c:out
										value="${leave.employee.station}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Department: <span
								class="badge badge-info"><c:out
										value="${leave.employee.department}" /></span></a>
							<a 	class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Date Joined: <span
								class="badge badge-info"><c:out
										value="${leave.employee.dateOfJoining}" /></span>
							  </a>
							  
							  <a 	class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Leave Balance Found: <span
								class="badge badge-info"><c:out
										value="${leave.l_bal}" /></span>
							  </a>
							  
						</div>
					</div>
					<div class="col-7">
						<div class="list-group" id="list-tab" role="tablist">
							<a class="list-group-item list-group-item-action active"
								id="list-home-list" data-toggle="list" href="#list-home"
								role="tab" aria-controls="home">Leave Details</a> <a
								class="list-group-item list-group-item-action"
								id="list-profile-list" data-toggle="list" href="#list-profile"
								role="tab" aria-controls="profile">Last Day Leave Taken: <span
								class="badge badge-secondary"><c:out
										value="${leave.last_day_leave_taken}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-messages-list" data-toggle="list" href="#list-messages"
								role="tab" aria-controls="messages">Days Requested: <span
								class="badge badge-secondary"> <c:out
										value="${leave.days_requested}" /></span></a> <a
								class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Leave Type: <span
								class="badge badge-secondary"> <c:out
										value="${leave.leave_type}" /></span>
							</a> <a class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Leave Start Date: <span
								class="badge badge-secondary"> <c:out
										value="${leave.leave_start_date}" /></span>
							</a> <a class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Leave End Date: <span
								class="badge badge-secondary"> <c:out
										value="${leave.leave_end_date}" /></span>
							</a> <a class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Annual Entitled Leave
								Days: <span class="badge badge-secondary"> <c:out
										value="${leave.annual_leave_days}" /></span>
							</a> <a class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Leave Balances: <span class="badge badge-secondary"> <c:out value="${leave.l_bal}" /></span>
							</a> <a class="list-group-item list-group-item-action"
								id="list-settings-list" data-toggle="list" href="#list-settings"
								role="tab" aria-controls="settings">Leave Status: <span class="badge badge-warning"> <c:out
										value="${leave.leave_status}" /></span>
							</a>
							<form action="approveLeave" method="post" class="my-3">
								<div class="form-group">
									<label for="leaveComments">Enter leave comments</label>
									<textarea class="form-control" id="leaveComments" name="leave_comments" required></textarea>
								</div>
								<div class="form-group">
									<input type="hidden" class="form-control" id="leave_id" name="leave_id"
										value="${leave.leave_id}">
								</div>
								<div class="form-group">
									<input type="hidden" class="form-control" id="leaveDaysRequested" name="leaveDaysRequested"
										value="${leave.days_requested}">
								</div>
								<div class="form-group">
									<input type="hidden" class="form-control" id="leaveType" name="leaveType"
										value="${leave.leave_type}">
								</div>
								<div class="form-group">
									<input type="hidden" class="form-control" id="annual_leave_days" name="annual_leave_days"
										value="${leave.annual_leave_days}">
								</div>
								<div class="form-group col-md-4">
									<label for="status">Leave Status</label> <select
										class="form-control" name="leave_status" id="status" required>
										<option>Choose Option</option>
										<option value="ACCEPTED">Accept</option>
										<option value="REJECTED">Rejected</option>
									</select>
								</div>
									<button type="submit" class="btn btn-success my-3">Submit
										& Approve</button>
							</form>
						</div>
					</div>
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