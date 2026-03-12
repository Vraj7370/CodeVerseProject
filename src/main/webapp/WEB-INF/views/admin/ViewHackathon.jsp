<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Hackathon</title>

<jsp:include page="AdminCSS.jsp"></jsp:include>

<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=DM+Sans:wght@300;400;500;600&display=swap"
	rel="stylesheet">

<style>
:root {
	--navy: #1B2A4A;
	--oxford: #0E1F3D;
	--eton: #2E6B72;
	--sage: #4A7C6F;
	--ivory: #F7F4EE;
	--cream: #EDE9E0;
	--slate: #4B5B6E;
	--muted: #8C97A4;
	--gold: #C9A84C;
	--rose: #A85858;
	--white: #FFFFFF;
	--shadow-sm: 0 2px 12px rgba(27, 42, 74, 0.08);
	--shadow-md: 0 8px 32px rgba(27, 42, 74, 0.12);
	--radius: 14px;
	--radius-sm: 8px;
}

* {
	box-sizing: border-box;
}

body {
	font-family: 'DM Sans', sans-serif;
	background: var(--ivory);
	color: var(--navy);
}

.content-wrapper {
	padding: 2rem 2rem 1rem !important;
	animation: pageFadeIn 0.7s ease both;
}

@
keyframes pageFadeIn {from { opacity:0;
	transform: translateY(18px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes cardSlideUp {from { opacity:0;
	transform: translateY(24px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* ===========================
     PAGE TITLE
  =========================== */
.welcome-badge {
	display: inline-block;
	background: var(--oxford);
	color: var(--gold);
	font-family: 'Playfair Display', serif;
	font-size: 0.7rem;
	letter-spacing: 2px;
	text-transform: uppercase;
	padding: 4px 12px;
	border-radius: 50px;
	margin-bottom: 0.5rem;
}

.page-title {
	font-family: 'Playfair Display', serif;
	font-size: 2rem;
	font-weight: 700;
	color: var(--oxford);
	margin-bottom: 0.25rem;
}

.page-subtitle {
	color: var(--muted);
	font-size: 0.9rem;
	margin-bottom: 2rem;
}

.section-label {
	font-size: 0.7rem;
	font-weight: 700;
	letter-spacing: 2px;
	text-transform: uppercase;
	color: var(--muted);
	margin: 1.8rem 0 1rem;
	display: flex;
	align-items: center;
	gap: 10px;
}

.section-label::after {
	content: '';
	flex: 1;
	height: 1px;
	background: var(--cream);
}

/* ===========================
     DETAIL CARD
  =========================== */
.detail-card {
	background: var(--white);
	border-radius: var(--radius);
	box-shadow: var(--shadow-md);
	overflow: hidden;
	animation: cardSlideUp 0.6s 0.1s ease both;
}

/* Dark header strip */
.detail-card-header {
	background: var(--oxford);
	padding: 1.6rem 2rem;
	display: flex;
	align-items: flex-start;
	justify-content: space-between;
	gap: 1rem;
	flex-wrap: wrap;
}

.detail-header-left {
	display: flex;
	align-items: center;
	gap: 1rem;
}

.detail-header-icon {
	width: 48px;
	height: 48px;
	border-radius: 50%;
	background: rgba(201, 168, 76, 0.15);
	border: 1.5px solid rgba(201, 168, 76, 0.35);
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 1.3rem;
	flex-shrink: 0;
}

.detail-header-info h5 {
	font-family: 'Playfair Display', serif;
	font-size: 1.2rem;
	color: var(--white);
	margin: 0 0 4px;
}

.detail-header-info p {
	font-size: 0.78rem;
	color: rgba(255, 255, 255, 0.45);
	margin: 0;
}

.detail-header-badges {
	display: flex;
	align-items: center;
	gap: 0.5rem;
	flex-wrap: wrap;
}

/* ===========================
     PILL STYLES
  =========================== */
.pill {
	display: inline-block;
	padding: 4px 13px;
	border-radius: 50px;
	font-size: 0.72rem;
	font-weight: 700;
	letter-spacing: 0.5px;
}

/* Light bg pills (for body) */
.pill-upcoming {
	background: #E8F0FE;
	color: #2C4A6E;
}

.pill-ongoing {
	background: #E8F5EE;
	color: #2D6A4F;
}

.pill-completed {
	background: var(--cream);
	color: var(--slate);
}

.pill-free {
	background: #E8F5EE;
	color: #2D6A4F;
}

.pill-paid {
	background: #FEF0EB;
	color: #B5573B;
}

/* Dark bg pills (for header) */
.pill-dark-upcoming {
	background: rgba(44, 74, 110, 0.4);
	color: #A8C4F0;
	border: 1px solid rgba(44, 74, 110, 0.6);
}

.pill-dark-ongoing {
	background: rgba(45, 106, 79, 0.35);
	color: #6FCF97;
	border: 1px solid rgba(45, 106, 79, 0.5);
}

.pill-dark-completed {
	background: rgba(255, 255, 255, 0.1);
	color: rgba(255, 255, 255, 0.6);
	border: 1px solid rgba(255, 255, 255, 0.2);
}

.pill-dark-free {
	background: rgba(45, 106, 79, 0.35);
	color: #6FCF97;
	border: 1px solid rgba(45, 106, 79, 0.5);
}

.pill-dark-paid {
	background: rgba(168, 88, 88, 0.35);
	color: #EB9090;
	border: 1px solid rgba(168, 88, 88, 0.5);
}

/* ===========================
     INFO GRID (body)
  =========================== */
.detail-body {
	padding: 2rem 2.2rem;
}

.info-section-title {
	font-family: 'Playfair Display', serif;
	font-size: 0.95rem;
	color: var(--oxford);
	margin-bottom: 1rem;
	padding-bottom: 0.5rem;
	border-bottom: 2px solid var(--cream);
}

.info-grid {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 1.2rem 2.5rem;
	margin-bottom: 2rem;
}

.info-item .info-key {
	font-size: 0.7rem;
	font-weight: 700;
	letter-spacing: 1.2px;
	text-transform: uppercase;
	color: var(--muted);
	margin-bottom: 4px;
}

.info-item .info-val {
	font-size: 0.92rem;
	font-weight: 500;
	color: var(--navy);
}

.info-val-muted {
	color: var(--muted);
	font-style: italic;
	font-size: 0.85rem;
}

/* Team size special display */
.team-range {
	display: inline-flex;
	align-items: center;
	gap: 8px;
	background: var(--cream);
	padding: 4px 14px;
	border-radius: 50px;
	font-size: 0.85rem;
	font-weight: 600;
	color: var(--slate);
}

.team-range span {
	color: var(--oxford);
	font-weight: 700;
}

/* Date range display */
.date-range {
	display: flex;
	align-items: center;
	gap: 8px;
	flex-wrap: wrap;
}

.date-chip {
	background: var(--ivory);
	border: 1px solid var(--cream);
	border-radius: var(--radius-sm);
	padding: 5px 12px;
	font-size: 0.85rem;
	color: var(--navy);
	font-weight: 500;
}

.date-arrow {
	color: var(--muted);
	font-size: 0.8rem;
}

/* ===========================
     FOOTER ACTIONS
  =========================== */
.detail-footer {
	padding: 1.2rem 2.2rem;
	border-top: 1px solid var(--cream);
	display: flex;
	justify-content: flex-end;
	gap: 0.75rem;
	background: var(--ivory);
}

.btn-action {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	padding: 9px 22px;
	border-radius: var(--radius-sm);
	font-family: 'DM Sans', sans-serif;
	font-size: 0.86rem;
	font-weight: 600;
	text-decoration: none;
	border: 1.5px solid transparent;
	cursor: pointer;
	transition: all 0.22s ease;
}

.btn-back {
	border-color: var(--slate);
	color: var(--slate);
	background: transparent;
}

.btn-back:hover {
	background: var(--slate);
	color: var(--white);
}

.btn-edit {
	background: var(--gold);
	color: var(--oxford);
	border-color: var(--gold);
}

.btn-edit:hover {
	background: var(--oxford);
	color: var(--gold);
	border-color: var(--oxford);
}

/* ===== DASHBOARD BACKGROUND FIX ===== */

/* main dashboard area */
.content-wrapper {
	background: #F3EFE7 !important;
}

/* page body soft contrast */
body {
	background: #F3EFE7 !important;
}

/* panels/cards area subtle contrast */
.main-panel {
	background: #F3EFE7 !important;
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

					<!-- ===========================
             PAGE TITLE
        =========================== -->
					<div class="welcome-badge">Admin Panel</div>
					<h3 class="page-title">Hackathon Details</h3>
					<p class="page-subtitle">Full information for this hackathon
						event</p>

					<div class="section-label">Overview</div>

					<div class="row justify-content-center">
						<div class="col-lg-10">

							<div class="detail-card">

								<!-- ===========================
                   DARK HEADER
              =========================== -->
								<div class="detail-card-header">

									<div class="detail-header-left">
										<div class="detail-header-icon">💻</div>
										<div class="detail-header-info">
											<h5>${hackathon.title}</h5>
											<p>ID #${hackathon.hackathonId} &nbsp;·&nbsp;
												${hackathon.eventType}</p>
										</div>
									</div>

									<div class="detail-header-badges">
										<c:choose>
											<c:when test="${hackathon.status == 'UPCOMING'}">
												<span class="pill pill-dark-upcoming">${hackathon.status}</span>
											</c:when>
											<c:when test="${hackathon.status == 'ONGOING'}">
												<span class="pill pill-dark-ongoing">${hackathon.status}</span>
											</c:when>
											<c:otherwise>
												<span class="pill pill-dark-completed">${hackathon.status}</span>
											</c:otherwise>
										</c:choose>

										<c:choose>
											<c:when test="${hackathon.payment == 'FREE'}">
												<span class="pill pill-dark-free">${hackathon.payment}</span>
											</c:when>
											<c:otherwise>
												<span class="pill pill-dark-paid">${hackathon.payment}</span>
											</c:otherwise>
										</c:choose>
									</div>

								</div>

								<!-- ===========================
                   BODY
              =========================== -->
								<div class="detail-body">

									<!-- Event Details -->
									<div class="info-section-title">Event Details</div>
									<div class="info-grid">

										<div class="info-item">
											<div class="info-key">Event Type</div>
											<div class="info-val">${hackathon.eventType}</div>
										</div>

										<div class="info-item">
											<div class="info-key">Location</div>
											<div class="info-val">
												<c:choose>
													<c:when test="${not empty hackathon.location}">${hackathon.location}</c:when>
													<c:otherwise>
														<span class="info-val-muted">Not specified</span>
													</c:otherwise>
												</c:choose>
											</div>
										</div>

										<div class="info-item">
											<div class="info-key">Team Size</div>
											<div class="info-val">
												<span class="team-range"> 👥 <span>${hackathon.minTeamSize}</span>
													to <span>${hackathon.maxTeamSize}</span> members
												</span>
											</div>
										</div>

										<div class="info-item">
											<div class="info-key">Eligibility</div>

											<div class="info-val">

												<c:choose>

													<c:when test="${not empty hackathon.userTypeId}">

														<c:forEach var="u" items="${allUserType}">
															<c:if test="${u.userTypeId == hackathon.userTypeId}">
																<span class="pill pill-upcoming"> 🎓
																	${u.userType} </span>
															</c:if>
														</c:forEach>

													</c:when>

													<c:otherwise>
														<span class="info-val-muted">All users allowed</span>
													</c:otherwise>

												</c:choose>

											</div>
										</div>

									</div>

									<!-- Registration Period -->
									<div class="info-section-title">Registration Period</div>
									<div class="info-grid">

										<div class="info-item">
											<div class="info-key">Start Date</div>
											<div class="info-val">
												<div class="date-chip">📅
													${hackathon.registrationStartDate}</div>
											</div>
										</div>

										<div class="info-item">
											<div class="info-key">End Date</div>
											<div class="info-val">
												<div class="date-chip">📅
													${hackathon.registrationEndDate}</div>
											</div>
										</div>

									</div>

								</div>

								<!-- ===========================
                   FOOTER
              =========================== -->
								<div class="detail-footer">
									<a href="listHackathon" class="btn-action btn-back">← Back
										to List</a> <a
										href="editHackathon?hackathonId=${hackathon.hackathonId}"
										class="btn-action btn-edit">✎ Edit Hackathon</a>
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
