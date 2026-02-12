<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add New User Type</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>
</head>

<body>

	<div class="container-scroller">

		<jsp:include page="AdminHeader.jsp"></jsp:include>

		<div class="container-fluid page-body-wrapper">

			<jsp:include page="AdminLeftSidebar.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">

					<div class="text-center mb-4">
						<h3 class="font-weight-bold d-inline-block border-bottom pb-2">
							New User Type</h3>
					</div>

					<div class="row justify-content-center">
						<div class="col-md-6 col-lg-5">

							<div class="card">
								<div class="card-body">

									<div class="d-flex justify-content-between mb-3">
										<p class="card-title mb-0">Add New User Type</p>
										<a href="listUser" class="text-info">View all</a>
									</div>

									<form action="saveUserType" method="post">

										<div class="mb-3">
											<label class="form-label">User Type</label> <input
												type="text" name="userType" class="form-control"
												placeholder="Enter user type" required>
										</div>

										<div class="d-flex gap-2">
											<button type="submit" class="btn btn-primary">Save</button>

											<a href="admin-dashboard" class="btn btn-secondary">
												Cancel </a>
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