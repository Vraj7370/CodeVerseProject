<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* ===== Card Styling ===== */
.card {
	border-radius: 14px;
}

/* ===== Gender Professional Alignment ===== */
.gender-group {
	display: flex;
	gap: 35px;
	align-items: center;
	height: 38px;
}

.gender-option {
	display: flex;
	align-items: center;
	gap: 6px;
}

.gender-option input[type="radio"] {
	margin: 0;
	width: 16px;
	height: 16px;
	cursor: pointer;
}

.gender-option label {
	margin: 0;
	font-weight: 500;
	cursor: pointer;
}

/* ===== Button polish ===== */
.btn-primary {
	padding-left: 25px;
	padding-right: 25px;
}

.btn-secondary {
	padding-left: 25px;
	padding-right: 25px;
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
							User Registration</h3>
					</div>

					<div class="row justify-content-center">
						<div class="col-lg-9">

							<div class="card shadow-sm">
								<div class="card-body">

									<form action="register" method="post"
										enctype="multipart/form-data">

										<div class="row g-3">

											<!-- First Name -->
											<div class="col-md-6">
												<label class="form-label">First Name</label> <input
													type="text" name="firstName" class="form-control" required>
											</div>

											<!-- Last Name -->
											<div class="col-md-6">
												<label class="form-label">Last Name</label> <input
													type="text" name="lastName" class="form-control" required>
											</div>

											<!-- Email -->
											<div class="col-md-6">
												<label class="form-label">Email</label> <input type="email"
													name="email" class="form-control" required>
											</div>

											<!-- Password -->
											<div class="col-md-6">
												<label class="form-label">Password</label> <input
													type="password" name="password" class="form-control"
													required>
											</div>

											<!-- Gender -->
											<div class="col-md-6">
												<label class="form-label">Gender</label>

												<div class="gender-group">

													<div class="gender-option">
														<input type="radio" name="gender" id="male" value="MALE"
															required> <label for="male">Male</label>
													</div>

													<div class="gender-option">
														<input type="radio" name="gender" id="female"
															value="FEMALE"> <label for="female">Female</label>
													</div>

													<div class="gender-option">
														<input type="radio" name="gender" id="other" value="OTHER">
														<label for="other">Other</label>
													</div>

												</div>
											</div>

											<!-- Birth Year -->
											<div class="col-md-6">
												<label class="form-label">Birth Year</label> <input
													type="number" name="birthYear" class="form-control"
													min="1900" max="2100" required>
											</div>

											<!-- Contact -->
											<div class="col-md-6">
												<label class="form-label">Contact Number</label> <input
													type="text" name="contactNum" class="form-control" required>
											</div>

											<!-- Qualification -->
											<div class="col-md-6">
												<label class="form-label">Qualification</label> <input
													type="text" name="qualification" class="form-control"
													required>
											</div>

											<!-- User Type -->
											<div class="col-md-6">
												<label class="form-label">User Type</label> <select
													name="userTypeId" class="form-control" required>
													<option value="">-- Select User Type --</option>

													<c:forEach items="${allUserType}" var="ut">
														<option value="${ut.userTypeId}">${ut.userType}</option>
													</c:forEach>
												</select>
											</div>

											<!-- City -->
											<div class="col-md-4">
												<label class="form-label">City</label> <input type="text"
													name="city" class="form-control" required>
											</div>

											<!-- State -->
											<div class="col-md-4">
												<label class="form-label">State</label> <input type="text"
													name="state" class="form-control" required>
											</div>

											<!-- Country -->
											<div class="col-md-4">
												<label class="form-label">Country</label> <input type="text"
													name="country" value="India" class="form-control" required>
											</div>

											<!-- Profile Picture -->
											<div class="col-12">
												<label class="form-label"> Profile Picture </label> <input
													type="file" name="profilePicURL" class="form-control">
											</div>

										</div>

										<!-- Buttons -->
										<div class="text-center mt-4">
											<button type="submit" class="btn btn-primary">Save
												User</button>

											<a href="listUser" class="btn btn-secondary"> Cancel </a>
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