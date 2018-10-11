<%-- 
    Document   : newjsp
    Created on : Sep 5, 2018, 9:31:12 AM
    Author     : DEVELOPER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User List</title>

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/cssreset.css" rel="stylesheet" />

<!-- JQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">

</head>
<body>
	<div class="custom-container">
		
		<div class="row">
		  <div class="col-md-12">
		  	  <label style="color: red">${msgdelete}</label>
		  	  <label style="color: blue">${msgcreate}</label>
		  </div>
		</div>
		
		<div class="panel panel-primary">
			<div class="panel-heading">USER LIST</div>
		</div>

		<table class="table" style="margin-top: -1.3em;">
			<thead style="background-color: #70a1cc;">
				<tr>
					<th style="color: white">Username</th>
					<th style="color: white">Division</th>
					<th style="color: white">Email</th>
					<th style="color: white">Admin</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userList}" var="user">
					<tr>
						<td>${user.username}</td>
						<td>${user.division}</td>
						<td>${user.email}</td>
						<td>${user.flAdmin}</td>
						<td><a class="btn btn-primary"
							href="${pageContext.request.contextPath}/usersedit/${user.userId}">Update</a></td>
						<td><a class="btn btn-danger"
							href="${pageContext.request.contextPath}/usersdelete/${user.userId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="pull-left">
			<a href="${pageContext.request.contextPath}/createuserform.html"
				class="btn btn-primary">Create User </a>
		</div>
	</div>
	
	<script>
		$(document).ready(function() {
		    $('.btn-danger').click(function(event) {
		        event.preventDefault();
		        if (confirm('Are you sure for delete this user?')) {
		        	 window.location.href = this.getAttribute('href');
		        } else {
		            return false;
		        }
		    });
		});
	</script>
</body>
</html>
