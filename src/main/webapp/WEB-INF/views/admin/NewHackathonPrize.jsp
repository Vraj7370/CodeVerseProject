<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="AdminCSS.jsp" />

<div class="container-scroller">

	<jsp:include page="AdminHeader.jsp" />
	<div class="container-fluid page-body-wrapper">
		<jsp:include page="AdminLeftSidebar.jsp" />

		<div class="main-panel">
			<div class="content-wrapper">

				<div class="text-center mb-4">
					<h3 class="font-weight-bold border-bottom pb-2">New Hackathon
						Prize</h3>
				</div>

				<div class="row justify-content-center">
					<div class="col-md-6">

						<div class="card shadow-sm">
							<div class="card-body">

								<div class="d-flex justify-content-between mb-3">
									<p class="card-title mb-0">Add Prize</p>
									<a href="listHackathonPrize" class="text-info">View all</a>
								</div>

								<form action="saveHackathonPrize" method="post">

									<div class="mb-3">
										<label>Hackathon</label> <select name="hackathon.hackathonId"
											class="form-control" required>
											<option value="">Select Hackathon</option>

											<c:forEach items="${hackathonList}" var="h">
												<option value="${h.hackathonId}">${h.title}</option>
											</c:forEach>

										</select>
									</div>

									<div class="mb-3">
										<label>Prize Title</label> <input type="text"
											name="prizeTitle" class="form-control" required>
									</div>

									<div class="mb-3">
										<label>Prize Description</label>
										<textarea name="prizeDescription" class="form-control"
											rows="5"></textarea>
									</div>

									<button class="btn btn-primary">Save</button>
									<a href="admin-dashboard" class="btn btn-secondary">Cancel</a>

								</form>

							</div>
						</div>

					</div>
				</div>

			</div>

			<jsp:include page="AdminFooter.jsp" />

		</div>
	</div>
</div>