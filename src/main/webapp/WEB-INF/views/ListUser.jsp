<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>User List</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>
/* Card polish */
.custom-card {
	border-radius: 14px;
	border: 1px solid #e4e7ec;
	transition: all 0.3s ease;
}

.custom-card:hover {
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
}

/* Table styling */
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

/* Buttons */
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
							User Management</h3>
					</div>

					<!-- Professional Card -->
					<div class="row justify-content-center mt-3">
						<div class="col-lg-11">

							<div class="card custom-card shadow-sm">
								<div class="card-body">

									<!-- Header -->
									<div
										class="d-flex justify-content-between align-items-center mb-4">
										<p class="card-title mb-0 fs-5">User List</p>

										<a href="newUserType"
											class="btn btn-primary btn-sm action-btn"> + Add User </a>
									</div>

									<!-- Table -->
									<div class="table-responsive">
										<table class="table custom-table align-middle mb-0">

											<thead>
												<tr>
													<th>SrNo</th>
													<th>Name</th>
													<th>Email</th>
													<th>Role</th>
													<th>Gender</th>
													<th>Status</th>
													<th class="text-center">Action</th>
												</tr>
											</thead>

											<tbody>

												<!-- Data Loop -->
												<c:forEach var="user" items="${userList}" varStatus="s">
													<tr>

														<td>${s.count}</td>

														<td><strong> ${user.firstName}
																${user.lastName} </strong></td>

														<td>${user.email}</td>

														<td><span
															class="badge bg-info text-dark rounded-pill">
																${user.role} </span></td>

														<td>${user.gender}</td>

														<td><c:choose>
																<c:when test="${user.active}">
																	<span class="badge bg-success rounded-pill">
																		Active </span>
																</c:when>
																<c:otherwise>
																	<span class="badge bg-danger rounded-pill">
																		Inactive </span>
																</c:otherwise>
															</c:choose></td>

														<td class="text-center"><a
															href="editUser?userId=${user.userId}"
															class="btn btn-sm btn-outline-warning action-btn">
																Edit </a> <a href="deleteUser?userId=${user.userId}"
															class="btn btn-sm btn-outline-danger action-btn"
															onclick="return confirm('Are you sure?');"> Delete </a> <a
															href="viewUser?userId=${user.userId}"
															class="btn btn-sm btn-outline-secondary action-btn">
																View </a></td>

													</tr>
												</c:forEach>

												<!-- Empty Check -->
												<c:if test="${empty userList}">
													<tr>
														<td colspan="7" class="text-center text-muted py-4">
															No users found</td>
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