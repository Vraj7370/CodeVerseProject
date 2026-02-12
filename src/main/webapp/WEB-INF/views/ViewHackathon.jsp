<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Hackathon</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<style>
.label {
	font-weight: 600;
	color: #6c757d;
	width: 200px;
}

.card {
	border-radius: 14px;
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

					<h3 class="font-weight-bold mb-4">Hackathon Details</h3>

					<div class="row justify-content-center">
						<div class="col-lg-8">

							<div class="card shadow-sm">
								<div class="card-body">


									<table class="table table-borderless">

										<tr>
											<td class="label">Hackathon ID</td>
											<td>${hackathon.hackathonId}</td>
										</tr>

										<tr>
											<td class="label">Title</td>
											<td><strong>${hackathon.title}</strong></td>
										</tr>

										<tr>
											<td class="label">Status</td>
											<td>${hackathon.status}</td>
										</tr>

										<tr>
											<td class="label">Event Type</td>
											<td>${hackathon.eventType}</td>
										</tr>

										<tr>
											<td class="label">Payment</td>
											<td>${hackathon.payment}</td>
										</tr>

										<tr>
											<td class="label">Min Team Size</td>
											<td>${hackathon.minTeamSize}</td>
										</tr>

										<tr>
											<td class="label">Max Team Size</td>
											<td>${hackathon.maxTeamSize}</td>
										</tr>

										<tr>
											<td class="label">Location</td>
											<td>${hackathon.location}</td>
										</tr>

										<tr>
											<td class="label">User Type ID</td>
											<td>${hackathon.userTypeId}</td>
										</tr>

										<tr>
											<td class="label">Registration Start</td>
											<td>${hackathon.registrationStartDate}</td>
										</tr>

										<tr>
											<td class="label">Registration End</td>
											<td>${hackathon.registrationEndDate}</td>
										</tr>

									</table>

								</div>

								<div class="card-footer text-end">
									<a href="listHackathon" class="btn btn-secondary"> Back </a> <a
										href="editHackathon?hackathonId=${hackathon.hackathonId}"
										class="btn btn-warning"> Edit </a>
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