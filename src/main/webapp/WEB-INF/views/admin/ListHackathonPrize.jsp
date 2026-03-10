<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="AdminCSS.jsp" />

<div class="container-scroller">

	<jsp:include page="AdminHeader.jsp" />
	<div class="container-fluid page-body-wrapper">
		<jsp:include page="AdminLeftSidebar.jsp" />

		<div class="main-panel">
			<div class="content-wrapper">

				<div class="text-center mb-4">
					<h3 class="font-weight-bold border-bottom pb-2">Hackathon
						Prize Management</h3>
				</div>

				<div class="card shadow-sm">
					<div class="card-body">

						<div class="d-flex justify-content-between mb-3">
							<p class="card-title mb-0">All Prizes</p>

							<a href="newHackathonPrize" class="btn btn-primary btn-sm">+
								New Prize</a>
						</div>

						<table class="table table-bordered">

							<tr>
								<th>#</th>
								<th>Hackathon</th>
								<th>Prize Title</th>
								<th>Description</th>
								<th>Action</th>
							</tr>

							<c:forEach items="${prizeList}" var="p" varStatus="i">

								<tr>
									<td>${i.count}</td>
									<td>${p.hackathon.title}</td>
									<td>${p.prizeTitle}</td>
									<td>${p.prizeDescription}</td>

									<td><a
										href="deleteHackathonPrize?hackathonPrizeId=${p.hackathonPrizeId}"
										class="btn btn-danger btn-sm"
										onclick="return confirm('Delete?')"> Delete </a></td>

								</tr>

							</c:forEach>

						</table>

					</div>
				</div>

			</div>

			<jsp:include page="AdminFooter.jsp" />

		</div>
	</div>
</div>