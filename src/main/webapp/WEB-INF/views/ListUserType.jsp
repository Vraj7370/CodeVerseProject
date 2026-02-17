<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>User Type List</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>
.custom-card {
	border-radius: 14px;
	border: 1px solid #e4e7ec;
	transition: all 0.3s ease;
}
.custom-card:hover {
	box-shadow: 0 8px 25px rgba(0,0,0,0.06);
}
.custom-table thead {
	background-color: #f8f9fc;
	border-bottom: 2px solid #e4e7ec;
}
.custom-table tbody tr:hover {
	background-color: #f3f6ff;
}
.action-btn {
	border-radius: 8px;
	transition: all 0.2s ease;
}
.action-btn:hover {
	transform: translateY(-1px);
	box-shadow: 0 3px 8px rgba(0,0,0,0.08);
}
</style>

</head>

<body>

<div class="container-scroller">

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<div class="container-fluid page-body-wrapper">

		<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

		<div class="main-panel">
			<div class="content-wrapper">

				<!-- Title -->
				<div class="text-center mb-4">
					<h3 class="font-weight-bold d-inline-block border-bottom pb-2">
						User Type Management
					</h3>
				</div>

				<div class="row justify-content-center mt-3">
					<div class="col-lg-11">

						<div class="card custom-card shadow-sm">
							<div class="card-body">

								<!-- Header -->
								<div class="d-flex justify-content-between align-items-center mb-4">
									<p class="card-title mb-0 fs-5">User Type List</p>

									<a href="newUserType"
										class="btn btn-primary btn-sm action-btn">
										+ Add User Type
									</a>
								</div>

								<!-- Table -->
								<div class="table-responsive">
									<table class="table custom-table align-middle mb-0">

										<thead>
											<tr>
												<th>SrNo</th>
												<th>User Type</th>
												<th class="text-center">Action</th>
											</tr>
										</thead>

										<tbody>

											<c:forEach var="ut" items="${userTypeList}" varStatus="s">
												<tr>

													<td>${s.count}</td>

													<td>
														<span>
															${ut.userType}
														</span>
													</td>

													<td class="text-center">
														<a href="editUserType?userTypeId=${ut.userTypeId}"
															class="btn btn-sm btn-outline-warning action-btn">
															Edit
														</a>

														<a href="deleteUserType?userTypeId=${ut.userTypeId}"
															class="btn btn-sm btn-outline-danger action-btn"
															onclick="return confirm('Are you sure?');">
															Delete
														</a>
													</td>

												</tr>
											</c:forEach>

											<c:if test="${empty userTypeList}">
												<tr>
													<td colspan="3" class="text-center text-muted py-4">
														No user types found
													</td>
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

			<jsp:include page="AdminFooter.jsp"></jsp:include>

		</div>
	</div>
</div>

</body>
</html>