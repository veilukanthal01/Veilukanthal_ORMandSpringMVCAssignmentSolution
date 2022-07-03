<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style>
.header {
	padding: 30px;
	text-align: center;
	background: #000080;
	color: white;
	font-size: 30px;
}
</style>

<script type="text/javascript">
	function validate() {

		var firstName = document.getElementById("firstName");
		firstNameValue = firstName.value.trim();
		validFirstName = /^[A-Za-z]+$/;
		firstNameErr = document.getElementById('first-name-err');
		if (firstNameValue == "") {
			firstNameErr.innerHTML = "First Name is required";
			firstNameErr.style.color = "red";
			return false;
		} else if (!validFirstName.test(firstNameValue)) {
			firstNameErr.innerHTML = "First Name must be only string without white spaces and numerics";
			firstNameErr.style.color = "red";
			return false;
		} else {
			firstNameErr.innerHTML = "";
		}

		var emailAddress = document.getElementById("email");
		emailAddressValue = emailAddress.value.trim();
		validEmailAddress = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		emailAddressErr = document.getElementById('email-err');
		if (emailAddressValue == "") {
			emailAddressErr.innerHTML = "Email Address is required";
			emailAddressErr.style.color = "red";
			return false;
		} else if (!validEmailAddress.test(emailAddressValue)) {
			emailAddressErr.innerHTML = "Email Address must be in valid format";
			emailAddressErr.style.color = "red";
			return false;
		} else {
			emailAddressErr.innerHTML = "";
			return true;
		}
		
	};
</script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Relationship Management</title>

</head>
<body>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<div class="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
			<hr>

			<p class="h4 mb-4">Save Customer</p>

			<form:form action="saveCustomer" method="post"
				modelAttribute="customer" onsubmit="return validate();">

				<!-- need to associate this data with customer id -->
				<form:hidden path="id" />

				<div class="form-group row">
					<label for="firstname" class="col-sm-2 col-form-label">First
						Name</label>
					<div class="col-sm-10">
						<form:input id="firstName" path="firstName"
							class="form-control mb-4 col-4" />
						<div id="first-name-err" color="red"></div>
					</div>
				</div>

				<div class="form-group row">
					<label for="lastname" class="col-sm-2 col-form-label">Last
						Name</label>
					<div class="col-sm-10">
						<form:input id="lastName" path="lastName"
							class="form-control mb-4 col-4" />
					</div>
				</div>

				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">Email</label>
					<div class="col-sm-10">
						<form:input id="email" path="email"
							class="form-control mb-4 col-4" />
							<div id="email-err"></div>
					</div>
				</div>

				<div class="form-group row">
					<!-- Button -->
					<div class="col-md-offset-3 col-md-9">
						<form:button class="btn btn-info col-2">Submit</form:button>
					</div>
				</div>

			</form:form>

			<hr>
			<a href="/CustomerRelationshipManagement/customer/list">Back to
				List</a>
		</div>
	</div>
</body>
</html>