<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Judge Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=DM+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">

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
    --shadow-sm: 0 2px 12px rgba(27,42,74,0.06);
    --shadow-md: 0 8px 28px rgba(27,42,74,0.1);
    --shadow-lg: 0 12px 40px rgba(27,42,74,0.12);
    --radius:    16px;
    --radius-sm: 10px;
  }

  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    font-family: 'DM Sans', sans-serif;
    background: #F3EFE7;
    color: var(--navy);
    min-height: 100vh;
  }

  /* ===========================
     MAIN LAYOUT
  =========================== */
  .dashboard-wrapper {
    max-width: 1400px;
    margin: 0 auto;
    padding: 2rem 2rem 1rem;
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
     HERO SECTION
  =========================== */
  .hero-section {
    background: linear-gradient(135deg, var(--oxford) 0%, #0a1528 100%);
    border-radius: var(--radius-lg, 20px);
    padding: 2rem 2.2rem;
    margin-bottom: 2rem;
    position: relative;
    overflow: hidden;
    animation: cardSlideUp 0.6s ease both;
  }

  .hero-section::before {
    content: '';
    position: absolute;
    top: -30%;
    right: -5%;
    width: 320px;
    height: 320px;
    background: radial-gradient(circle, rgba(201,168,76,0.12) 0%, transparent 70%);
    border-radius: 50%;
  }

  .hero-section::after {
    content: '';
    position: absolute;
    bottom: -20%;
    left: -5%;
    width: 240px;
    height: 240px;
    background: radial-gradient(circle, rgba(46,107,114,0.08) 0%, transparent 70%);
    border-radius: 50%;
  }

  .hero-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 1.5rem;
    position: relative;
    z-index: 2;
  }

  .hero-title {
    font-family: 'Playfair Display', serif;
    font-size: 1.8rem;
    font-weight: 700;
    color: var(--white);
    margin-bottom: 0.5rem;
    letter-spacing: -0.01em;
  }

  .hero-subtitle {
    color: rgba(255,255,255,0.65);
    font-size: 0.9rem;
    line-height: 1.5;
  }

  .hero-actions {
    display: flex;
    gap: 0.75rem;
    flex-wrap: wrap;
  }

  .btn-hero {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 8px 20px;
    border-radius: 40px;
    font-family: 'DM Sans', sans-serif;
    font-size: 0.8rem;
    font-weight: 600;
    text-decoration: none;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(8px);
    color: var(--white);
    border: 1px solid rgba(255,255,255,0.2);
    transition: all 0.25s ease;
  }

  .btn-hero:hover {
    background: var(--gold);
    color: var(--oxford);
    transform: translateY(-2px);
    text-decoration: none;
    border-color: var(--gold);
  }

  /* ===========================
     STATS GRID
  =========================== */
  .stats-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 1.25rem;
    margin-bottom: 2rem;
  }

  .stat-card {
    background: var(--white);
    border-radius: var(--radius);
    padding: 1.2rem 1.5rem;
    box-shadow: var(--shadow-sm);
    border: 1px solid var(--cream);
    transition: all 0.25s ease;
    animation: cardSlideUp 0.5s ease both;
  }

  .stat-card:hover {
    transform: translateY(-3px);
    box-shadow: var(--shadow-md);
    border-color: rgba(201,168,76,0.3);
  }

  .stat-label {
    font-size: 0.7rem;
    font-weight: 700;
    letter-spacing: 1px;
    text-transform: uppercase;
    color: var(--muted);
    margin-bottom: 0.6rem;
  }

  .stat-number {
    font-family: 'Playfair Display', serif;
    font-size: 2.2rem;
    font-weight: 700;
    color: var(--oxford);
    line-height: 1.2;
  }

  /* ===========================
     TWO COLUMN LAYOUT
  =========================== */
  .two-columns {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1.5rem;
    margin-bottom: 1.5rem;
  }

  /* ===========================
     PANELS
  =========================== */
  .panel {
    background: var(--white);
    border-radius: var(--radius);
    box-shadow: var(--shadow-sm);
    overflow: hidden;
    border: 1px solid var(--cream);
    transition: all 0.25s ease;
    animation: cardSlideUp 0.6s 0.05s ease both;
    height: 100%;
    display: flex;
    flex-direction: column;
  }

  .panel:hover {
    box-shadow: var(--shadow-md);
  }

  .panel-header {
    background: var(--oxford);
    padding: 1rem 1.5rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 0.75rem;
  }

  .panel-header-left {
    display: flex;
    align-items: center;
    gap: 10px;
  }

  .panel-icon {
    width: 32px;
    height: 32px;
    background: rgba(201,168,76,0.15);
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1rem;
  }

  .panel-header h3 {
    font-family: 'Playfair Display', serif;
    font-size: 1rem;
    font-weight: 600;
    color: var(--gold);
    margin: 0;
  }

  .panel-header p {
    font-size: 0.7rem;
    color: rgba(255,255,255,0.5);
    margin: 0;
  }

  .panel-body {
    padding: 1.5rem;
    flex: 1;
  }

  /* Workspace Panel - Special Styling */
  .workspace-panel {
    background: linear-gradient(135deg, var(--ivory) 0%, var(--white) 100%);
  }

  .workspace-panel .panel-body {
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 1rem;
  }

  .workspace-text {
    color: var(--slate);
    font-size: 0.9rem;
    line-height: 1.5;
  }

  .btn-workspace {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 10px 24px;
    border-radius: var(--radius-sm);
    font-family: 'DM Sans', sans-serif;
    font-size: 0.85rem;
    font-weight: 700;
    text-decoration: none;
    background: var(--oxford);
    color: var(--gold);
    border: none;
    transition: all 0.22s ease;
  }

  .btn-workspace:hover {
    background: var(--eton);
    color: var(--white);
    transform: translateY(-2px);
    text-decoration: none;
  }

  /* ===========================
     HACKATHON CARDS GRID
  =========================== */
  .hackathon-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 1rem;
  }

  .hackathon-card {
    background: var(--ivory);
    border-radius: var(--radius-sm);
    padding: 1rem;
    border: 1px solid var(--cream);
    transition: all 0.2s ease;
  }

  .hackathon-card:hover {
    border-color: var(--gold);
    transform: translateY(-2px);
    box-shadow: var(--shadow-sm);
  }

  .hackathon-title {
    font-family: 'Playfair Display', serif;
    font-size: 1rem;
    font-weight: 700;
    color: var(--oxford);
    margin-bottom: 0.5rem;
    line-height: 1.3;
  }

  .hackathon-meta {
    font-size: 0.75rem;
    color: var(--muted);
    margin-bottom: 0.25rem;
  }

  .hackathon-dates {
    font-size: 0.7rem;
    color: var(--slate);
    margin: 0.5rem 0;
  }

  /* ===========================
     TABLE STYLES
  =========================== */
  .table-responsive {
    overflow-x: auto;
    margin-top: 0.5rem;
  }

  .cv-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.85rem;
  }

  .cv-table th {
    text-align: left;
    padding: 12px 12px;
    font-size: 0.65rem;
    font-weight: 700;
    letter-spacing: 0.8px;
    text-transform: uppercase;
    color: var(--muted);
    border-bottom: 2px solid var(--cream);
  }

  .cv-table td {
    padding: 12px 12px;
    border-bottom: 1px solid var(--cream);
    color: var(--navy);
    vertical-align: middle;
  }

  .cv-table tr:last-child td {
    border-bottom: none;
  }

  .cv-table tr:hover {
    background: rgba(201,168,76,0.03);
  }

  /* Badges */
  .pill {
    display: inline-flex;
    align-items: center;
    padding: 4px 12px;
    border-radius: 30px;
    font-size: 0.7rem;
    font-weight: 600;
    letter-spacing: 0.3px;
  }

  .pill-pending {
    background: rgba(201,168,76,0.12);
    color: #b87c1a;
  }

  .pill-reviewed {
    background: rgba(46,107,114,0.12);
    color: var(--eton);
  }

  /* Buttons */
  .btn-sm {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    padding: 6px 14px;
    border-radius: 8px;
    font-family: 'DM Sans', sans-serif;
    font-size: 0.7rem;
    font-weight: 600;
    text-decoration: none;
    background: rgba(201,168,76,0.12);
    color: #8a6e1e;
    border: 1px solid rgba(201,168,76,0.25);
    transition: all 0.2s ease;
  }

  .btn-sm:hover {
    background: var(--gold);
    color: var(--oxford);
    transform: translateY(-1px);
    text-decoration: none;
  }

  /* Empty State */
  .empty-state {
    text-align: center;
    padding: 2rem 1rem;
  }

  .empty-state-icon {
    font-size: 2.5rem;
    opacity: 0.4;
    margin-bottom: 0.75rem;
  }

  .empty-state p {
    color: var(--muted);
    font-size: 0.85rem;
  }

  /* Footer */
  .footer-note {
    margin-top: 2rem;
    padding: 1.2rem 0;
    text-align: center;
    border-top: 1px solid var(--cream);
    color: var(--muted);
    font-size: 0.8rem;
  }

  .footer-note a {
    color: var(--gold);
    text-decoration: none;
    font-weight: 600;
  }

  .footer-note a:hover {
    text-decoration: underline;
  }

  /* ===========================
     RESPONSIVE
  =========================== */
  @media (max-width: 1100px) {
    .stats-grid {
      grid-template-columns: repeat(2, 1fr);
    }
    .two-columns {
      grid-template-columns: 1fr;
      gap: 1.5rem;
    }
  }

  @media (max-width: 768px) {
    .dashboard-wrapper {
      padding: 1rem;
    }
    .hero-section {
      padding: 1.5rem;
    }
    .hero-title {
      font-size: 1.4rem;
    }
    .stats-grid {
      gap: 0.75rem;
    }
    .stat-number {
      font-size: 1.6rem;
    }
    .panel-body {
      padding: 1rem;
    }
    .workspace-panel .panel-body {
      flex-direction: column;
      align-items: flex-start;
    }
    .btn-workspace {
      width: 100%;
      justify-content: center;
    }
  }

  @media (max-width: 480px) {
    .stats-grid {
      grid-template-columns: 1fr;
    }
    .hero-actions {
      width: 100%;
    }
    .btn-hero {
      flex: 1;
      justify-content: center;
    }
  }

</style>
</head>

<body>

<div class="dashboard-wrapper">

  <!-- ===== HERO SECTION ===== -->
  <div class="hero-section">
    <div class="hero-header">
      <div>
        <h1 class="hero-title">Welcome, ${sessionScope.user.firstName} ${sessionScope.user.lastName}</h1>
        <p class="hero-subtitle">Review hackathons and manage your judging tasks from one place.</p>
      </div>
      <div class="hero-actions">
        <a href="/judge/submissions" class="btn-hero">📋 Review Submissions</a>
        <a href="/judge/profile" class="btn-hero">👤 My Profile</a>
        <a href="/judge/change-password" class="btn-hero">🔐 Change Password</a>
        <a href="/logout" class="btn-hero">🚪 Logout</a>
      </div>
    </div>
  </div>

  <!-- ===== STATS CARDS ===== -->
  <div class="stats-grid">
    <div class="stat-card">
      <div class="stat-label">Total Hackathons</div>
      <div class="stat-number">${totalHackathon}</div>
    </div>
    <div class="stat-card">
      <div class="stat-label">Upcoming</div>
      <div class="stat-number">${upcomingHackathon}</div>
    </div>
    <div class="stat-card">
      <div class="stat-label">Ongoing</div>
      <div class="stat-number">${ongoingHackathon}</div>
    </div>
    <div class="stat-card">
      <div class="stat-label">Pending Submissions</div>
      <div class="stat-number">${pendingReviewSubmission}</div>
    </div>
  </div>

  <!-- ===== JUDGE WORKSPACE PANEL ===== -->
  <div class="panel workspace-panel" style="margin-bottom: 1.5rem;">
    <div class="panel-header">
      <div class="panel-header-left">
        <div class="panel-icon">⚡</div>
        <div>
          <h3>Judge Workspace</h3>
          <p>Open your assigned submissions, review each team, and save round-wise scores</p>
        </div>
      </div>
    </div>
    <div class="panel-body">
      <div class="workspace-text">
        📊 You have <strong>${pendingReviewSubmission}</strong> pending submissions waiting for your review.
      </div>
      <a href="/judge/submissions" class="btn-workspace">📋 Go to Submission Review →</a>
    </div>
  </div>

  <!-- ===== TWO COLUMN LAYOUT ===== -->
  <div class="two-columns">

    <!-- Left Column: Ongoing Hackathons -->
    <div class="panel">
      <div class="panel-header">
        <div class="panel-header-left">
          <div class="panel-icon">🚀</div>
          <div>
            <h3>Ongoing Hackathons</h3>
            <p>Active hackathons where you're a judge</p>
          </div>
        </div>
      </div>
      <div class="panel-body">
        <c:choose>
          <c:when test="${empty ongoingHackathonList}">
            <div class="empty-state">
              <div class="empty-state-icon">🏆</div>
              <p>No ongoing hackathons assigned right now.</p>
            </div>
          </c:when>
          <c:otherwise>
            <div class="hackathon-grid">
              <c:forEach items="${ongoingHackathonList}" var="h">
                <div class="hackathon-card">
                  <div class="hackathon-title">${h.title}</div>
                  <div class="hackathon-meta">${h.eventType} | ${h.payment}</div>
                  <div class="hackathon-dates">📅 ${h.registrationStartDate} → ${h.registrationEndDate}</div>
                  <div style="margin-top: 10px;">
                    <a href="/judge/viewHackathon?hackathonId=${h.hackathonId}" class="btn-sm">👁 View Details</a>
                  </div>
                </div>
              </c:forEach>
            </div>
          </c:otherwise>
        </c:choose>
      </div>
    </div>

    <!-- Right Column: Pending Submissions -->
    <div class="panel">
      <div class="panel-header">
        <div class="panel-header-left">
          <div class="panel-icon">⏳</div>
          <div>
            <h3>Pending Submissions</h3>
            <p>Submissions waiting for your review</p>
          </div>
        </div>
      </div>
      <div class="panel-body">
        <c:choose>
          <c:when test="${empty pendingSubmissionList}">
            <div class="empty-state">
              <div class="empty-state-icon">📝</div>
              <p>No pending submissions for your review.</p>
            </div>
          </c:when>
          <c:otherwise>
            <div class="table-responsive">
              <table class="cv-table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Hackathon</th>
                    <th>Team</th>
                    <th>Submitted</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${pendingSubmissionList}" var="s" varStatus="i">
                    <tr>
                      <td style="width: 40px;">${i.count}</td>
                      <td><strong>${submissionHackathonMap[s.hackathonId].title}</strong></td>
                      <td>${submissionTeamMap[s.teamId].teamName}</td>
                      <td style="font-size: 0.75rem;">${s.submitedDate}</td>
                      <td><a href="/judge/submissions/review?submissionId=${s.hackathonSubmissionId}" class="btn-sm">⭐ Review</a></td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </c:otherwise>
        </c:choose>
      </div>
    </div>
  </div>

  <!-- ===== REVIEWED SUBMISSIONS - FULL WIDTH ===== -->
  <div class="panel">
    <div class="panel-header">
      <div class="panel-header-left">
        <div class="panel-icon">✅</div>
        <div>
          <h3>Reviewed Submissions</h3>
          <p>Submissions you've already evaluated</p>
        </div>
      </div>
    </div>
    <div class="panel-body">
      <c:choose>
        <c:when test="${empty reviewedSubmissionList}">
          <div class="empty-state">
            <div class="empty-state-icon">📋</div>
            <p>No reviewed submissions yet.</p>
          </div>
        </c:when>
        <c:otherwise>
          <div class="table-responsive">
            <table class="cv-table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Hackathon</th>
                  <th>Team</th>
                  <th>Submitted Date</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${reviewedSubmissionList}" var="s" varStatus="i">
                  <tr>
                    <td style="width: 40px;">${i.count}</td>
                    <td><strong>${submissionHackathonMap[s.hackathonId].title}</strong></td>
                    <td>${submissionTeamMap[s.teamId].teamName}</td>
                    <td style="font-size: 0.75rem;">${s.submitedDate}</td>
                    <td><span class="pill pill-reviewed">Reviewed</span></td>
                    <td><a href="/judge/submissions/review?submissionId=${s.hackathonSubmissionId}" class="btn-sm">✏ Update</a></td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </div>

  <!-- Footer -->
  <div class="footer-note">
    <div>CodeVerse Judge Panel</div>
    <div style="margin-top: 6px;">Need help? <a href="/logout">Contact Admin</a></div>
  </div>

</div>

</body>
</html>