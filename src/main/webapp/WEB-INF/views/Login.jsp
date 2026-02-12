<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Login</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>

/* Center Card */
.login-wrapper {
	min-height: 75vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.login-card {
	width: 100%;
	max-width: 420px;
	border-radius: 14px;
}

.login-card .card-body {
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

					<div class="login-wrapper">

						<div class="card shadow-sm login-card">
							<div class="card-body">

								<div class="text-center mb-4">
									<h3 class="font-weight-bold d-inline-block border-bottom pb-2">
										Login</h3>
								</div>

								<!-- Error Message -->
								<c:if test="${not empty error}">
									<div class="alert alert-danger text-center">${error}</div>
								</c:if>

								<form action="loginUser" method="post">

									<div class="mb-3">
										<label class="form-label">Email Address</label> <input
											type="email" name="email" class="form-control"
											placeholder="Enter your email" required>
									</div>

									<div class="mb-3">
										<label class="form-label">Password</label> <input
											type="password" name="password" class="form-control"
											placeholder="Enter your password" required>
									</div>

									<button type="submit" class="btn btn-primary w-100 mt-2">
										Login</button>

									<div class="text-center mt-3">
										<small> Don't have an account? <a href="signup">Sign
												Up</a>
										</small>
									</div>

									<div class="text-center mt-2">
										<small> Forgot Password? <a href="forgetpassword">
												Click Here </a>
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