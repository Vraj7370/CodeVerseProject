<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hackathon Description List</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* -------- Card Styling -------- */
.custom-card {
	border-radius: 14px;
	border: 1px solid #e4e7ec;
	transition: all 0.3s ease;
}

.custom-card:hover {
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
}

/* -------- Table Styling -------- */
.custom-table thead {
	background-color: #f8f9fc;
	border-bottom: 2px solid #e4e7ec;
}

.custom-table tbody tr {
	transition: background 0.25s ease;
}

.custom-table tbody tr:hover {
	background-color: #f3f6ff;
}

/* -------- Buttons -------- */
.action-btn {
	border-radius: 8px;
	transition: all 0.2s ease;
}

.action-btn:hover {
	transform: translateY(-1px);
	box-shadow: 0 3px 8px rgba(0, 0, 0, 0.08);
}

</style>
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

				<!-- Page Title -->
				<div class="text-center mb-4">
					<h3 class="font-weight-bold d-inline-block border-bottom pb-2">
						Hackathon Description Management
					</h3>
				</div>

				<!-- Card Section -->
				<div class="row justify-content-center mt-3">
					<div class="col-lg-11">

						<div class="card custom-card shadow-sm">
							<div class="card-body">

								<!-- Card Header -->
								<div class="d-flex justify-content-between align-items-center mb-4">
									<p class="card-title mb-0 fs-5">
										All Hackathon Descriptions
									</p>

									<a href="newHackathonDescription"
									   class="btn btn-primary btn-sm action-btn">
										+ New Description
									</a>
								</div>

								<!-- Table -->
								<div class="table-responsive">
									<table class="table custom-table align-middle mb-0">

										<thead>
											<tr>
												<th>#</th>
												<th>Description</th>
												<th class="text-center">Actions</th>
											</tr>
										</thead>

										<tbody>

											<!-- Empty Check -->
											<c:if test="${empty descriptionList}">
												<tr>
													<td colspan="3"
														class="text-center text-muted py-4">
														No descriptions found
													</td>
												</tr>
											</c:if>

											<!-- Data Loop -->
											<c:forEach var="d"
												items="${descriptionList}"
												varStatus="i">

												<tr>

													<td>${i.count}</td>

													<td>
														<div style="max-width:600px; overflow:hidden;">
															<c:out value="${d.hackathonDetails}" escapeXml="false"/>
														</div>
													</td>

													<td class="text-center">

														<a href="deleteHackathonDescription?hackathonDescriptionId=${d.hackathonDescriptionId}"
														   class="btn btn-sm btn-outline-danger action-btn"
														   onclick="return confirm('Are you sure you want to delete this description?')">
															Delete
														</a>

													</td>

												</tr>

											</c:forEach>

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