<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor_Login</title>
<%@include file="components/allcss.jsp"%>

<link rel="stylesheet" href="style.css">
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container p-5 mt-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card card-color text-black">
					<div class="card-body">
						<div class="card-header text-center c-head text-grey">
							<i class="fas fa-user-circle fa-2x"></i>
							<h3>Doctor Login</h3>
						</div>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-info fs-5">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session" />

						</c:if>
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg }</p>
							<c:remove var="errorMsg" scope="session" />

						</c:if>


						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label>
								<div class="input-group">
									<span class="input-group-text"><i
										class="fas fa-envelope"></i></span> <input required name="email"
										type="email" class="form-control"
										placeholder="Enter your Email">
								</div>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label>
								<div class="input-group">
									<span class="input-group-text"><i class="fas fa-lock"></i></span>
									<input required name="password" type="password"
										class="form-control" placeholder="Enter Password">
								</div>
							</div>
							<button type="submit" class="btn bg-custom text-white w-100">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>