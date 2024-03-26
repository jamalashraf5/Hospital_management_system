<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Comment_Page</title>
<style type="text/css">
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
		url("../img/hosptbuilding.webp");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
<%@include file="../components/allcss.jsp"%>
</head>
<body>
	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>


	<%@include file="navbar.jsp"%>
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">

			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">Patient Comment</p>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao = new AppointmentDao(DBConnect.getConn());

						Appointment ap = dao.getAppointmentById(id);
						
						%>
						<form class="row" action="../updateStatus" method="post">
							<div class="col-md-6">
								<label>Patient Name</label> <input type="text" readonly
									value="<%=ap.getFullName()%>" class="form-control">
							</div>

							<div class="col-md-6">
								<label>Age</label> <input type="text" value="<%=ap.getAge()%>"
									readonly class="form-control">
							</div>


							<div class="col-md-6">
								<br> <label>Mob No</label> <input type="text" readonly
									value="<%=ap.getPhNo()%>" class="form-control">
							</div>

							<div class="col-md-6">
								<br> <label>Diseases</label> <input type="text" readonly
									value="<%=ap.getDiseases()%>" class="form-control">
							</div>

							<div class="col-md-12">
								<br> <label>Comment</label>
								<textarea required name="comm" class="form-control" row="3"
									cols=""></textarea>
							</div>

							<input type="hidden" name="id" value="<%=ap.getId()%>"> <input
								type="hidden" name="did" value="<%=ap.getDoctorId()%>">

							<button class=" mt-3 btn bg-custom col-md-6 offset-md-3">Submit</button>

						</form>
						

					</div>
				</div>
			</div>
		</div>
	</div>






</body>
</html>