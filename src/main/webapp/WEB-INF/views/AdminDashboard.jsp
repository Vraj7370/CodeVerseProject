<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Dashboard</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>

<body>

	<div class="container-scroller">

		<!-- Navbar -->
		<jsp:include page="AdminHeader.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">

			<!-- Sidebar -->
			<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<c:if test="${not empty sessionScope.user}">
						<h3 class="font-weight-bold">Welcome
							${sessionScope.user.firstName} ${sessionScope.user.lastName}</h3>
					</c:if>

					<h6 class="font-weight-normal mb-4">Hackathon Management
						Dashboard Overview</h6>

					<!-- Stats Cards -->
					<div class="row">

						<div class="col-md-3 mb-4 stretch-card">
							<div class="card card-tale">
								<div class="card-body">
									<p class="mb-4">Total Users</p>
									<p class="fs-30 mb-2">${totalUsers}</p>
								</div>
							</div>
						</div>

						<div class="col-md-3 mb-4 stretch-card">
							<div class="card card-dark-blue">
								<div class="card-body">
									<p class="mb-4">Total Categories</p>
									<p class="fs-30 mb-2">${totalCategories}</p>
								</div>
							</div>
						</div>

						<div class="col-md-3 mb-4 stretch-card">
							<div class="card card-light-blue">
								<div class="card-body">
									<p class="mb-4">Total Hackathons</p>
									<p class="fs-30 mb-2">${totalHackathons}</p>
								</div>
							</div>
						</div>

						<div class="col-md-3 mb-4 stretch-card">
							<div class="card card-light-danger">
								<div class="card-body">
									<p class="mb-4">Active Hackathons</p>
									<p class="fs-30 mb-2">${activeHackathons}</p>
								</div>
							</div>
						</div>

					</div>

					<!-- Recent Hackathons Section -->
					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">

							<div class="card">
								<div class="card-body">

									<div class="d-flex justify-content-between mb-3">
										<p class="card-title mb-0">Recent Hackathons</p>

										<a href="listHackathon" class="text-info"> View All </a>
									</div>

									<div class="table-responsive">
										<table class="table table-striped">

											<thead>
												<tr>
													<th>Title</th>
													<th>Status</th>
													<th>Event Type</th>
													<th>Registration End</th>
												</tr>
											</thead>

											<tbody>

												<c:forEach var="h" items="${recentHackathons}">
													<tr>
														<td>${h.title}</td>
														<td>${h.status}</td>
														<td>${h.eventType}</td>
														<td>${h.registrationEndDate}</td>
													</tr>
												</c:forEach>

												<c:if test="${empty recentHackathons}">
													<tr>
														<td colspan="4" class="text-center text-muted">No
															recent hackathons</td>
													</tr>
												</c:if>

											</tbody>

										</table>
									</div>

								</div>
							</div>

						</div>
					</div>

				</div>

				<!-- Footer -->
				<jsp:include page="AdminFooter.jsp"></jsp:include>

			</div>
		</div>
	</div>

</body>
</html>