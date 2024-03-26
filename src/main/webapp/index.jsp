<%@ page import="java.sql.DatabaseMetaData"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="com.db.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index_Page</title>
<%@include file="components/allcss.jsp"%>
<link rel="stylesheet" href="style.css">



</head>
<body>
	<%@include file="components/navbar.jsp"%>
	
	
	<div class="carousel-container">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/doc1.jpg" class="d-block w-100" alt="..."
						height="500px">
					<div
						class="carousel-caption d-none d-md-flex flex-column justify-content-center align-items-center">
						<h1 class="fs-20 text-center">Welcome to MediCare</h1>
						<h5 class="text-center">Keeping You Healthy</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/img1.avif" class="d-block w-100 h-60" alt="..."
						height="500px">
					<div
						class="carousel-caption d-none d-md-flex flex-column justify-content-center align-items-center">
						<h1 class="fs-20 text-center">Welcome to MediCare</h1>
						<h5 class="text-center">Keeping You Healthy</h5>
					</div>
				</div>
				<div class="carousel-item">
					<img src="img/doc3.jpeg" class="d-block w-100 h-60" alt="..."
						height="500px">
					<div
						class="carousel-caption d-none d-md-flex flex-column justify-content-center align-items-center">
						<h1 class="fs-20 text-center">Welcome to MediCare</h1>
						<h5 class="text-center">Keeping You Healthy</h5>
					</div>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	</div>

	<div class="container-fluid p-3 bg-light">
		<p class="text-center fs-2">Key Features of Our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 text-primary">100% Safety</p>
								<p>Lorem ipsum dolor sit amet, consecteutur adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 text-primary">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consecteutur adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 text-primary">Friendly Doctor</p>
								<p>Lorem ipsum dolor sit amet, consecteutur adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 text-primary">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consecteutur adipisicing
									elit. Voluptatem, inventore</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img alt="" src="img/doct.png" class="img-fluid p-10"
					style="max-height: 350px;">
			</div>
		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-3 text-secondary">Our Team</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card bg-light">
					<div class="card-body text-center">
						<img src="img/doct1.avif" class="img-fluid"
							style="max-width: 100%; height: auto;" alt="Dr. Lorem Ipsum">
						<p class="fw-bold fs-5">Dr. Lorem Ipsum</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card bg-light">
					<div class="card-body text-center">
						<img src="img/doct1.avif" class="img-fluid"
							style="max-width: 100%; height: auto;" alt="Dr. Lorem Ipsum">
						<p class="fw-bold fs-5">Dr. Lorem Ipsum</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card bg-light">
					<div class="card-body text-center">
						<img src="img/doct1.avif" class="img-fluid"
							style="max-width: 100%; height: auto;" alt="Dr. Lorem Ipsum">
						<p class="fw-bold fs-5">Dr. Lorem Ipsum</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card bg-light">
					<div class="card-body text-center">
						<img src="img/doct1.avif" class="img-fluid"
							style="max-width: 100%; height: auto;" alt="Dr. Lorem Ipsum">
						<p class="fw-bold fs-5">Dr. Lorem Ipsum</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3 mt-3">
				<div class="card paint-card bg-light">
					<div class="card-body text-center">
						<img src="img/doct1.avif" class="img-fluid"
							style="max-width: 100%; height: auto;" alt="Dr. Lorem Ipsum">
						<p class="fw-bold fs-5">Dr. Lorem Ipsum</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="components/footer.jsp"%>
</body>
</html>