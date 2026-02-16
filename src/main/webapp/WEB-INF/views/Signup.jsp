<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

</head>

<style>

/* ===== PERFECT SKYDASH RADIO ALIGNMENT ===== */
.form-check-inline {
	display: inline-flex !important;
	align-items: center !important;
	margin-right: 25px;
	padding-left: 0;
}

.form-check-input {
	margin: 0 !important;
	position: relative !important;
	top: 1px; /* tiny vertical adjustment */
	cursor: pointer;
}

.form-check-label {
	margin: 0 0 0 6px !important;
	line-height: 1.5;
	cursor: pointer;
	font-weight: 500;
}

/* Remove extra bootstrap spacing */
.form-check {
	padding-left: 0;
}
</style>
<body>

	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<div class="container-scroller">


		<div class="container-fluid page-body-wrapper">

			<!-- Sidebar -->
			<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<!-- Page Title -->
					<div class="text-center mb-4">
						<h3 class="font-weight-bold d-inline-block border-bottom pb-2">
							User Registration</h3>
					</div>

					<div class="row justify-content-center">
						<div class="col-lg-8">

							<div class="card shadow-sm">
								<div class="card-body">

									<form action="register" method="post">

										<div class="row">

											<div class="col-md-6 mb-3">
												<label class="form-label">First Name</label> <input
													type="text" name="firstName" class="form-control" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">Last Name</label> <input
													type="text" name="lastName" class="form-control" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">Email</label> <input type="email"
													name="email" class="form-control" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">Password</label> <input
													type="password" name="password" class="form-control"
													required>
											</div>

											<!-- Gender -->
											<!-- Gender -->
											<div class="col-md-6 mb-3">
												<label class="form-label d-block">Gender</label>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender"
														value="MALE" required> <label
														class="form-check-label">Male</label>
												</div>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender"
														value="FEMALE"> <label class="form-check-label">Female</label>
												</div>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender"
														value="OTHER"> <label class="form-check-label">Other</label>
												</div>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">Birth Year</label> <input
													type="number" name="birthYear" class="form-control"
													min="1900" max="2100" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">Contact Number</label> <input
													type="text" name="contactNum" class="form-control" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">Qualification</label> <input
													type="text" name="qualification" class="form-control"
													placeholder="e.g. B.Tech, MCA, BSc" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label">User Type</label> <select
													name="userTypeId" class="form-control">
													<option value="-1">---Select User Type---</option>

													<c:forEach items="${allUserType}" var="ut">
														<option value="${ut.userTypeId}">${ut.userType}</option>
													</c:forEach>
												</select>
											</div>

											<div class="col-md-4 mb-3">
												<label class="form-label">City</label> <input type="text"
													name="city" class="form-control" required>
											</div>

											<div class="col-md-4 mb-3">
												<label class="form-label">State</label> <input type="text"
													name="state" class="form-control" required>
											</div>

											<div class="col-md-4 mb-3">
												<label class="form-label">Country</label> <input type="text"
													name="country" value="India" class="form-control" required>
											</div>

											<div class="col-12 mb-3">
												<label class="form-label">Profile Picture URL</label> <input
													type="file" name="profilePicURL" class="form-control">
											</div>

										</div>

										<div class="text-center mt-3">
											<button type="submit" class="btn btn-primary px-4">
												Save User</button>
										</div>

									</form>

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