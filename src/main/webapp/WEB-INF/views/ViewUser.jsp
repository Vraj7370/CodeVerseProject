<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View User</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* ===== Profile Styling ===== */
.profile-pic {
	width: 130px;
	height: 130px;
	border-radius: 50%;
	object-fit: cover;
	border: 3px solid #e4e7ec;
}

.label {
	font-weight: 600;
	color: #6c757d;
	width: 180px;
}

.card {
	border-radius: 14px;
}

.user-role-badge {
	font-size: 13px;
	padding: 6px 12px;
	border-radius: 20px;
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
					<h3 class="font-weight-bold mb-4">User Details</h3>

					<div class="row justify-content-center">
						<div class="col-lg-10">

							<div class="card shadow-sm">

								<div class="card-body">

									<div class="row">

										<!-- Profile Section -->
										<div class="col-md-4 text-center">

											<c:choose>
												<c:when test="${not empty user.profilePicURL}">
													<img src="${user.profilePicURL}" class="profile-pic mb-3">
												</c:when>
												<c:otherwise>
													<img src="https://via.placeholder.com/130"
														class="profile-pic mb-3">
												</c:otherwise>
											</c:choose>

											<div>
												<span class="badge bg-info text-dark user-role-badge">
													${user.role} </span>
											</div>

										</div>

										<!-- Info Section -->
										<div class="col-md-8">

											<table class="table table-borderless mb-0">

												<tr>
													<td class="label">User ID</td>
													<td>${user.userId}</td>
												</tr>

												<tr>
													<td class="label">Full Name</td>
													<td><strong> ${user.firstName}
															${user.lastName} </strong></td>
												</tr>

												<tr>
													<td class="label">Email</td>
													<td>${user.email}</td>
												</tr>

												<tr>
													<td class="label">Gender</td>
													<td>${user.gender}</td>
												</tr>

												<tr>
													<td class="label">Birth Year</td>
													<td>${user.birthYear}</td>
												</tr>

												<tr>
													<td class="label">Contact Number</td>
													<td>${user.contactNum}</td>
												</tr>

												<tr>
													<td class="label">Created At</td>
													<td>${user.createdAt}</td>
												</tr>

												<tr>
													<td class="label">Status</td>
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
												</tr>

												<tr>
													<td class="label">Country</td>
													<td>${userDetail.country}</td>
												</tr>

												<tr>
													<td class="label">State</td>
													<td>${userDetail.state}</td>
												</tr>

												<tr>
													<td class="label">City</td>
													<td>${userDetail.city}</td>
												</tr>

											</table>

										</div>

									</div>

								</div>

								<div class="card-footer text-end">

									<a href="listUser" class="btn btn-secondary"> Back </a> <a
										href="editUser?userId=${user.userId}" class="btn btn-warning">
										Edit </a>

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