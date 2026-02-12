<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add New Category</title>

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
							New Category</h3>
					</div>

					<div class="row justify-content-center">
						<div class="col-md-6 col-lg-5">

							<div class="card shadow-sm">
								<div class="card-body">

									<div class="d-flex justify-content-between mb-3">
										<p class="card-title mb-0">Add New Category</p>

										<a href="listCategory" class="text-info"> View all </a>
									</div>

									<form action="saveCategory" method="post">

										<div class="mb-3">
											<label class="form-label"> Category Name </label> <input
												type="text" name="categoryName" class="form-control"
												placeholder="Enter category name" required>
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