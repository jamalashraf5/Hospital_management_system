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
<link rel="stylesheet" href="style.css">
</head>
<body>

	<%@include file="components/navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Doctor Details</p>
						<c:if test="${not empty errorMsg }">
								<p class="fs-3 text-center text-danger">${errorMsg }</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>
							<c:if test="${not empty sucMsg }">
								<p class="fs-3 text-center text-success">${sucMsg }</p>
								<c:remove var="sucMsg" scope="session" />
							</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Fees</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Gender</th>
									<th scope="col">Email</th>
									<th scope="col">MOb No</th>
								</tr>
							</thead>

							<tbody>
								<%
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Doctor> list2 = dao2.getAllDoctor();
								for (Doctor d : list2) {
								%>
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getFees()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getGender()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMob()%></td>

								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
</body>
</html>