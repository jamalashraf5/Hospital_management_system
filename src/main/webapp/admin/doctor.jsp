<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page import="java.util.List"%>
<%@ page import="com.dao.SpecialistDao"%>
<%@ page import="com.dao.DoctorDao"%>
<%@ page import="com.entity.Specialist"%>
<%@ page import="com.entity.Doctor"%>
<%@ page import="com.db.DBConnect"%>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor_details</title>
<%@include file="../components/allcss.jsp"%>
<link rel="stylesheet" href="admin_style.css">
</head>
<body>

	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body card-color">
						<p class="fs-3 text-center ">
							Add Doctor <br>
							<c:if test="${not empty errorMsg }">
								<p class="fs-3 text-center text-danger">${errorMsg }</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>
							<c:if test="${not empty sucMsg }">
								<p class="fs-3 text-center text-success">${sucMsg }</p>
								<c:remove var="sucMsg" scope="session" />
							</c:if>
						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label><input required
									name="name" type="text" class="form-control"
									placeholder="Enter your name">
							</div>

							<div class="mb-3">
								<label class="form-label">Doctor Fees</label><input required
									name="fees" type="text" class="form-control"
									placeholder="Enter Fees">
							</div>

							<div class="mb-3">
								<label class="form-label">Date of Birth</label><input required
									name="dob" type="date" class="form-control" pattern="[0-9]{10}"
									placeholder="">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label><input required
									name="qualification" type="text" class="form-control"
									placeholder="Enter qualification">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label><select required
									name="specialist" class="form-control">
									<option>--select--</option>
									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>
								</select>
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
								<label class="form-label">Email</label><input required
									name="email" type="email" class="form-control"
									placeholder="Enter email">
							</div>

							<div class="mb-3">
								<label class="form-label">Mobile Number</label><input required
									name="mob" type="text" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label><input required
									name="password" type="password" class="form-control"
									placeholder="">
							</div>
							<button type="submit" class="btn bg-custom text-white w-100">Submit</button>
						</form>
					</div>
				</div>
			</div>

		</div>
</body>
</html>