<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add New Hackathon</title>

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
							New Hackathon</h3>
					</div>

					<div class="row justify-content-center">
						<div class="col-lg-7 col-md-8">

							<div class="card shadow-sm">
								<div class="card-body">

									<div class="d-flex justify-content-between mb-3">
										<p class="card-title mb-0">Add New Hackathon</p>
										<a href="listHackathon" class="text-info"> View all </a>
									</div>

									<form action="saveHackathon" method="post">

										<!-- Title -->
										<div class="mb-3">
											<label class="form-label"> Hackathon Title </label> <input
												type="text" class="form-control" name="title" required>
										</div>

										<!-- Status -->
										<div class="mb-3">
											<label class="form-label"> Status </label> <select
												name="status" class="form-control" required>
												<option value="">-- Select Status --</option>
												<option value="UPCOMING">Upcoming</option>
												<option value="ONGOING">Ongoing</option>
												<option value="COMPLETED">Completed</option>
											</select>
										</div>

										<!-- Event Type -->
										<div class="mb-3">
											<label class="form-label"> Event Type </label> <select
												name="eventType" class="form-control" required>
												<option value="">-- Select Event Type --</option>
												<option value="ONLINE">Online</option>
												<option value="OFFLINE">Offline</option>
												<option value="HYBRID">Hybrid</option>
											</select>
										</div>

										<!-- Payment -->
										<div class="mb-3">
											<label class="form-label"> Payment </label> <select
												name="payment" class="form-control" required>
												<option value="">-- Select Payment Type --</option>
												<option value="FREE">Free</option>
												<option value="PAID">Paid</option>
											</select>
										</div>

										<!-- Team Size -->
										<div class="row">
											<div class="col-md-6 mb-3">
												<label class="form-label"> Minimum Team Size </label> <input
													type="number" name="minTeamSize" class="form-control"
													min="1" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label"> Maximum Team Size </label> <input
													type="number" name="maxTeamSize" class="form-control"
													min="1" required>
											</div>
										</div>

										<!-- Location -->
										<div class="mb-3">
											<label class="form-label"> Location </label> <input
												type="text" name="location" class="form-control">
										</div>

										<!-- User Type -->
										<div class="mb-3">
											<label class="form-label"> User Type </label> <select
												name="userTypeId" class="form-control" required>
												<option value="">-- Select User Type --</option>
												<c:forEach var="u" items="${allUserType}">
													<option value="${u.userTypeId}">${u.userType}</option>
												</c:forEach>
											</select>
										</div>

										<!-- Registration Dates -->
										<div class="row">
											<div class="col-md-6 mb-3">
												<label class="form-label"> Registration Start Date </label>
												<input type="date" name="registrationStartDate"
													class="form-control" required>
											</div>

											<div class="col-md-6 mb-3">
												<label class="form-label"> Registration End Date </label> <input
													type="date" name="registrationEndDate" class="form-control"
													required>
											</div>
										</div>

										<!-- Buttons -->
										<div class="d-flex justify-content-center gap-2 mt-3">
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