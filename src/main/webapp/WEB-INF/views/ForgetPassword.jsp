<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* Center Card */
.forgot-wrapper {
	min-height: 75vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.forgot-card {
	width: 100%;
	max-width: 420px;
	border-radius: 14px;
}

.forgot-card .card-body {
	padding: 35px;
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

					<div class="forgot-wrapper">

						<div class="card shadow-sm forgot-card">
							<div class="card-body">

								<div class="text-center mb-4">
									<h3 class="font-weight-bold d-inline-block border-bottom pb-2">
										Forget Password</h3>
								</div>

								<!-- Success Message -->
								<c:if test="${not empty success}">
									<div class="alert alert-success text-center">${success}</div>
								</c:if>

								<!-- Error Message -->
								<c:if test="${not empty error}">
									<div class="alert alert-danger text-center">${error}</div>
								</c:if>

								<form action="forgetpassword" method="post">

									<div class="mb-3">
										<label class="form-label"> Email Address </label> <input
											type="email" name="email" class="form-control"
											placeholder="Enter your registered email" required>
									</div>

									<button type="submit" class="btn btn-primary w-100 mt-2">
										Send Reset Link</button>

									<div class="text-center mt-3">
										<small> <a href="login"> Back to Login </a>
										</small>
									</div>

								</form>

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