<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/cssreset.css"
	rel="stylesheet" />

<!-- JQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">

<title>Example Form</title>

</head>
<body>
	<div class="custom-container">
		<table class="table table-striped">
			<tbody>
				<tr>
					<s:form class="form-horizontal" modelAttribute="email"
						action="${pageContext.request.contextPath}/submitemailform.html"
						method="post">
						<td colspan="1">
							<div class="well form-horizontal">
								<fieldset>
									<div class="form-group">
										<label class="col-md-4 control-label">Full Name</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-user"></i></span><input id="fullName"
													name="fullName" placeholder="Full Name"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Address Line 1</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="addressLine1" name="addressLine1"
													placeholder="Address Line 1" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Address Line 2</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="addressLine2" name="addressLine2"
													placeholder="Address Line 2" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">City</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input id="city"
													name="city" placeholder="City" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">State/Province/Region</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input id="state"
													name="state" placeholder="State/Province/Region"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Postal Code/ZIP</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input id="postcode"
													name="postcode" placeholder="Postal Code/ZIP"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Country</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon" style="max-width: 100%;"><i
													class="glyphicon glyphicon-list"></i></span> <select
													class="selectpicker form-control">
													<option>A really long option to push the menu over
														the edget</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Email</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-envelope"></i></span><input id="email"
													name="email" placeholder="Email" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Phone Number</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-earphone"></i></span><input
													id="phoneNumber" name="phoneNumber"
													placeholder="Phone Number" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
								</fieldset>
							</div>
						</td>
						<td colspan="1">
							<div class="well form-horizontal">
								<fieldset>
									<div class="form-group">
										<label class="col-md-4 control-label">Full Name</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-user"></i></span><input id="fullName"
													name="fullName" placeholder="Full Name"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Address Line 1</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="addressLine1" name="addressLine1"
													placeholder="Address Line 1" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Address Line 2</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input
													id="addressLine2" name="addressLine2"
													placeholder="Address Line 2" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">City</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input id="city"
													name="city" placeholder="City" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">State/Province/Region</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input id="state"
													name="state" placeholder="State/Province/Region"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Postal Code/ZIP</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-home"></i></span><input id="postcode"
													name="postcode" placeholder="Postal Code/ZIP"
													class="form-control" required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Country</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon" style="max-width: 100%;"><i
													class="glyphicon glyphicon-list"></i></span> <select
													class="selectpicker form-control">
													<option>A really long option to push the menu over
														the edget</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Email</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-envelope"></i></span><input id="email"
													name="email" placeholder="Email" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label">Phone Number</label>
										<div class="col-md-8 inputGroupContainer">
											<div class="input-group">
												<span class="input-group-addon"><i
													class="glyphicon glyphicon-earphone"></i></span><input
													id="phoneNumber" name="phoneNumber"
													placeholder="Phone Number" class="form-control"
													required="true" value="" type="text">
											</div>
										</div>
									</div>
								</fieldset>
							</div>
						</td>
					</s:form>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
