<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false"%>

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
			<hr />

		<a href="/CustomerRelationshipManagement/customer/showForm"
				class="btn btn-primary btn-sm mb-3"> Add Customer </a>
			<br />
			<div class="panel panel-info">
				<div class="panel-heading"></div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<!-- loop over and print our customers -->
							<c:forEach var="tempCustomer" items="${customers}">

								<!-- construct an "update" link with customer id -->
								<c:url var="updateLink" value="/customer/updateForm">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>

								<!-- construct an "delete" link with customer id -->
								<c:url var="deleteLink" value="/customer/delete">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>

								<tr>
									<td>${tempCustomer.firstName}</td>
									<td>${tempCustomer.lastName}</td>
									<td>${tempCustomer.email}</td>

									<td>
										<!-- display the update link --> <a href="${updateLink}" class="btn btn-info btn-sm">Update</a>
										 <a href="${deleteLink}" class="btn btn-danger btn-sm"
										onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
									</td>

								</tr>

							</c:forEach>
						</tbody>
					</table>

				</div>
			</div>
		</div>

	</div>
</body>
</html>