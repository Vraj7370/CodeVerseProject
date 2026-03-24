<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>List Hackathon Prize</title>
<jsp:include page="AdminCSS.jsp"></jsp:include>

<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=DM+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

  /* ===========================
     CODEVERSE THEME — Variables
  =========================== */
  :root {
    --navy:      #1B2A4A;
    --oxford:    #0E1F3D;
    --eton:      #2E6B72;
    --sage:      #4A7C6F;
    --ivory:     #F7F4EE;
    --cream:     #EDE9E0;
    --slate:     #4B5B6E;
    --muted:     #8C97A4;
    --gold:      #C9A84C;
    --rose:      #A85858;
    --white:     #FFFFFF;
    --shadow-sm: 0 2px 12px rgba(27,42,74,0.08);
    --shadow-md: 0 8px 32px rgba(27,42,74,0.12);
    --radius:    14px;
    --radius-sm: 8px;
  }

  * { box-sizing: border-box; }

  body        { font-family: 'DM Sans', sans-serif; background: #F3EFE7 !important; color: var(--navy); }
  .main-panel { background: #F3EFE7 !important; }

  /* ===========================
     ANIMATIONS
  =========================== */
  .content-wrapper {
    padding: 2rem 2rem 1rem !important;
    background: #F3EFE7 !important;
    animation: pageFadeIn 0.7s ease both;
  }

  @keyframes pageFadeIn {
    from { opacity: 0; transform: translateY(18px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  @keyframes cardSlideUp {
    from { opacity: 0; transform: translateY(24px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  /* ===========================
     PAGE HEADER
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
    margin: 1.6rem 0 1rem;
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
     FORM CARD
  =========================== */
  .form-card {
    background: var(--white);
    border-radius: var(--radius);
    box-shadow: var(--shadow-md);
    overflow: hidden;
    animation: cardSlideUp 0.6s 0.1s ease both;
  }

  .form-card-header {
    background: var(--oxford);
    padding: 1.4rem 2rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;
  }
  .form-card-header::before {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 3px;
    background: linear-gradient(90deg, transparent, var(--gold), transparent);
  }

  .form-card-header-left {
    display: flex;
    align-items: center;
    gap: 1rem;
  }

  .form-card-header-icon {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    background: rgba(201,168,76,0.15);
    border: 1.5px solid rgba(201,168,76,0.35);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.1rem;
    flex-shrink: 0;
  }

  .form-card-header-text h5 {
    font-family: 'Playfair Display', serif;
    font-size: 1.05rem;
    color: var(--white);
    margin: 0 0 2px;
  }
  .form-card-header-text p {
    font-size: 0.75rem;
    color: rgba(255,255,255,0.4);
    margin: 0;
  }

  /* ===========================
     NEW PRIZE BUTTON (header)
  =========================== */
  .btn-new-prize {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    padding: 9px 20px;
    border-radius: var(--radius-sm);
    font-family: 'DM Sans', sans-serif;
    font-size: 0.82rem;
    font-weight: 700;
    text-decoration: none;
    border: none;
    background: var(--gold);
    color: var(--oxford);
    cursor: pointer;
    letter-spacing: 0.3px;
    transition: all 0.22s ease;
    white-space: nowrap;
  }
  .btn-new-prize:hover {
    background: #d4b35a;
    color: var(--oxford);
    transform: translateY(-2px);
    box-shadow: 0 4px 16px rgba(201,168,76,0.35);
    text-decoration: none;
  }

  /* ===========================
     TABLE
  =========================== */
  .cv-table-wrapper {
    overflow-x: auto;
  }

  .cv-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.875rem;
  }

  .cv-table thead tr {
    background: var(--oxford);
  }
  .cv-table thead th {
    padding: 13px 16px;
    font-size: 0.65rem;
    font-weight: 700;
    letter-spacing: 1.5px;
    text-transform: uppercase;
    color: rgba(255,255,255,0.55);
    border: none;
    white-space: nowrap;
  }

  .cv-table tbody tr {
    border-bottom: 1px solid var(--cream);
    transition: background 0.15s;
  }
  .cv-table tbody tr:last-child { border-bottom: none; }
  .cv-table tbody tr:hover { background: rgba(201,168,76,0.04); }

  .cv-table tbody td {
    padding: 14px 16px;
    color: var(--navy);
    vertical-align: middle;
  }

  /* Serial number cell */
  .cv-table tbody td:first-child {
    font-size: 0.75rem;
    color: var(--muted);
    font-weight: 600;
    width: 40px;
  }

  /* Hackathon ID cell */
  .hackathon-id {
    font-weight: 600;
    font-size: 0.85rem;
    color: var(--oxford);
  }

  /* Prize Title cell */
  .prize-title {
    font-weight: 600;
    font-size: 0.9rem;
    color: var(--oxford);
  }

  /* Description cell with text wrapping */
  .prize-desc-cell {
    max-width: 450px;
    white-space: normal;
    font-size: 0.85rem;
    line-height: 1.45;
    color: var(--slate);
  }

  /* ===========================
     ACTION BUTTONS
  =========================== */
  .action-buttons {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    min-width: 140px;
  }

  .cv-btn {
    display: inline-flex;
    align-items: center;
    gap: 5px;
    padding: 5px 12px;
    border-radius: 6px;
    font-family: 'DM Sans', sans-serif;
    font-size: 0.73rem;
    font-weight: 600;
    text-decoration: none;
    border: none;
    cursor: pointer;
    transition: all 0.18s ease;
    white-space: nowrap;
    letter-spacing: 0.2px;
  }
  .cv-btn:hover { transform: translateY(-1px); text-decoration: none; }

  /* Edit button */
  .cv-btn-edit {
    background: rgba(201,168,76,0.12);
    color: #8a6e1e;
    border: 1px solid rgba(201,168,76,0.25);
  }
  .cv-btn-edit:hover { background: var(--gold); color: var(--oxford); }

  /* Delete button */
  .cv-btn-delete {
    background: rgba(168,88,88,0.09);
    color: var(--rose);
    border: 1px solid rgba(168,88,88,0.2);
  }
  .cv-btn-delete:hover { background: var(--rose); color: var(--white); }

  /* ===========================
     EMPTY STATE
  =========================== */
  .empty-state {
    text-align: center;
    padding: 56px 24px;
  }
  .empty-state-icon {
    font-size: 3rem;
    margin-bottom: 14px;
    opacity: 0.35;
  }
  .empty-state h4 {
    font-family: 'Playfair Display', serif;
    font-size: 1.2rem;
    color: var(--oxford);
    margin-bottom: 6px;
  }
  .empty-state p {
    color: var(--muted);
    font-size: 0.88rem;
    margin-bottom: 20px;
  }

  /* ===========================
     RESPONSIVE
  =========================== */
  @media (max-width: 767.98px) {
    .action-buttons { min-width: 120px; }
    .prize-desc-cell { max-width: 280px; }
  }

</style>

</head>
<body>
	<div class="container-scroller">
		<%-- <jsp:include page="AdminHeader.jsp"></jsp:include> --%>
		<div class="container-fluid page-body-wrapper">
			<%-- <jsp:include page="AdminLeftSidebar.jsp"></jsp:include> --%>
			<div class="main-panel">
				<div class="content-wrapper">
					
					<!-- ===== PAGE HEADER ===== -->
					<div class="welcome-badge">Rewards & Recognition</div>
					<h3 class="page-title">Hackathon Prizes</h3>
					<p class="page-subtitle">Manage prize structures, titles, and descriptions for hackathon events</p>

					<div class="section-label">Prize Inventory</div>

					<!-- ===== MAIN CARD ===== -->
					<div class="form-card">

						<!-- Card Header -->
						<div class="form-card-header">
							<div class="form-card-header-left">
								<div class="form-card-header-icon">🏆</div>
								<div class="form-card-header-text">
									<h5>All Prizes</h5>
									<p>Browse, edit, or delete hackathon prize details</p>
								</div>
							</div>
							<c:url var="newPrizeUrl" value="newHackathonPrize">
								<c:if test="${hackathonId != null}">
									<c:param name="hackathonId" value="${hackathonId}" />
								</c:if>
							</c:url>
							<a href="${newPrizeUrl}" class="btn-new-prize">
								+ New Prize
							</a>
						</div>

						<!-- Table -->
						<div class="cv-table-wrapper">
							<table class="cv-table">
								<thead>
									70
										<th>#</th>
										<th>Hackathon ID</th>
										<th>Prize Title</th>
										<th>Prize Description</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${empty prizeList}">
										<tr>
											<td colspan="5">
												<div class="empty-state">
													<div class="empty-state-icon">🏆</div>
													<h4>No Prizes Found</h4>
													<p>You haven't added any prizes for this hackathon yet.</p>
													<c:url var="newEmptyUrl" value="newHackathonPrize">
														<c:if test="${hackathonId != null}">
															<c:param name="hackathonId" value="${hackathonId}" />
														</c:if>
													</c:url>
													<a href="${newEmptyUrl}" class="btn-new-prize">+ Create First Prize</a>
												</div>
											</td>
										</tr>
									</c:if>
									<c:forEach var="p" items="${prizeList}" varStatus="i">
										<tr>
											<td>${i.index + 1}</td>
											<td><span class="hackathon-id">${p.hackathonId}</span></td>
											<td><span class="prize-title">${p.prizeTitle}</span></td>
											<td class="prize-desc-cell">${p.prizeDescription}</td>
											<td>
												<div class="action-buttons">
													<a href="editHackathonPrize?hackathonPrizeId=${p.hackathonPrizeId}" class="cv-btn cv-btn-edit">✏ Edit</a>
													<a href="deleteHackathonPrize?hackathonPrizeId=${p.hackathonPrizeId}&hackathonId=${p.hackathonId}" class="cv-btn cv-btn-delete" onclick="return confirm('Are you sure you want to delete this prize?')">🗑 Delete</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.cv-table-wrapper -->

					</div>
					<!-- /.form-card -->

				</div>
				<!-- /.content-wrapper -->
				<%-- <jsp:include page="AdminFooter.jsp"></jsp:include> --%>
			</div>
			<!-- /.main-panel -->
		</div>
		<!-- /.page-body-wrapper -->
	</div>
	<!-- /.container-scroller -->
</body>
</html>