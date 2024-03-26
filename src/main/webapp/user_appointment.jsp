<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="components/allcss.jsp"%>
<style type="text/css">
/* .paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
} */
body {
	background-image: linear-gradient(to left bottom, #d16ba5, #c777b9, #ba83ca, #aa8fd8,
		#9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1
		);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.card-color {
	background: #c8e6c9;
}

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.4);
}

.bg-custom {
	background: #00695c !important;
}
.c-head {
	background: #81c784;
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .6), rgba(0, 0, 0, .6)),
		url("img/hosptbuilding.webp");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	display: flex;
	align-items: center; 
	justify-content: center;
	flex-direction: column;
	font-size: 50px;
	font-weight: bold;
	
}
</style>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container-fulid backImg ">
		<p class="text-center text-white ">Book Your Doctor</p>
		<p class="text-center text-white">Appointment</p>
		<p class="text-center   text-white">Online</p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6">
				<img alt="" src="img/doct.png">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<div class="card-header text-center c-head text-white">
							<i class="fas fa-user-circle fa-2x"></i>
							<h3>Patient Appointment</h3>
						</div>
						<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg}">
							<p class=" fs-4 text-center text-success">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="addAppointment" method="post">

							<input type="hidden" name="userid" value="${userObj.id }">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label> <input
									required type="number" class="form-control" name="age">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label" id="appoint_date">Appointment
									Date</label> <input type="date" class="form-control" required
									name="appoint_date">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									name="phno">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									required type="text" class="form-control" name="diseases">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									required class="form-control" name="doct">
									<option value="">--select--</option>

									<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
									}
									%>




								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>

							<c:if test="${empty userObj }">
								<a href="user_login.jsp"
									class="col-md-6 offset-md-3 btn bg-custom color-white">Submit</a>
							</c:if>

							<c:if test="${not empty userObj }">
								<button class="col-md-6 offset-md-3 btn bg-custom color-white">Submit</button>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@include file="components/footer.jsp"%>
	
	<script type="text/javascript" src="JavaScript/appt_script.js"></script>

</body>
</html>