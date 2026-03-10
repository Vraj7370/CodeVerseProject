<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add New Hackathon Description</title>

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
							New Hackathon Description</h3>
					</div>

					<div class="row justify-content-center">
						<div class="col-md-8 col-lg-7">

							<div class="card shadow-sm">
								<div class="card-body">

									<div class="d-flex justify-content-between mb-3">
										<p class="card-title mb-0">Add Hackathon Description</p>

										<a href="listHackathonDescription" class="text-info">
											View all
										</a>
									</div>

									<form action="saveHackathonDescription" method="post">

										<div class="mb-3">
											<label class="form-label"> Hackathon Details </label>

											<textarea name="hackathonDetails"
												class="form-control"
												rows="8"
												placeholder="Enter hackathon full description here..."
												required></textarea>
										</div>

										<div class="d-flex gap-2">
											<button type="submit" class="btn btn-primary">
												Save
											</button>

											<a href="admin-dashboard" class="btn btn-secondary">
												Cancel
											</a>
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