<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User_Register</title>
<%@include file="components/allcss.jsp"%>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card card-color text-black">
					<div class="card-body">
						<div class="card-header text-center c-head text-white">
							<i class="fas fa-user-circle fa-2x"></i>
							<h3>Registration Page</h3>
						</div>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-info fs-3">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session" />

						</c:if>
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg }</p>
							<c:remove var="errorMsg" scope="session" />

						</c:if>

						<form action="user_register" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label><input required
									name="name" type="text" class="form-control"
									placeholder="Enter your name">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label><input required
									name="email" type="email" class="form-control"
									placeholder="Enter email">
							</div>

							<div class="mb-3">
								<label class="form-label">Date of Birth</label><input required
									name="dob" type="date" class="form-control" pattern="[0-9]{10}"
									placeholder="">
							</div>
							<div class="mb-3">
								<label>Gender:</label><br>
								<div style="display: inline-block;">
									<input type="radio" id="male" name="gender" value="male">
									<label for="male">Male</label>
								</div>
								<div style="display: inline-block;">
									<input type="radio" id="female" name="gender" value="female">
									<label for="female">Female</label>
								</div>
								<div style="display: inline-block;">
									<input type="radio" id="other" name="gender" value="other">
									<label for="other">Other</label>
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label><input required
									name="password" type="password" class="form-control"
									placeholder="">
							</div>
							<button type="submit" class="btn bg-success text-white w-100">Signup</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>