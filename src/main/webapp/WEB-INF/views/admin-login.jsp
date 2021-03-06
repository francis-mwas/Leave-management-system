<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page contentType="text/html; charset = UTF-8"%>
<%@ page session="false"%>
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
	<div class="jumbotron">

		<div class="container fuid">
			<h1 class="display-4">Welcome Admin</h1>
			<p class="lead">Please login to proceed.</p>
			<hr class="my-4">
			<form action="admin-login" method="post">
				<div class="form-group">
					<label for="username">Username</label>
					<div class="col-8">
						<input type="text" class="form-control"
							id="username" name="username" placeholder="Usernamee">
					</div>
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<div class="col-8">
						<input type="password" class="form-control"
							id="password" name="password" placeholder="password">
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Login</button>
			</form>
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