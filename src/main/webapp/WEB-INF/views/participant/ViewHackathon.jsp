<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${hackathon.title}— HackPortal</title>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<style>

/* ══════════════════════════════════════
   TOKENS  — Clean Professional Theme (EXACT Home.jsp copy)
══════════════════════════════════════ */
:root {
	--bg: #f4f2ee;
	--bg1: #ffffff;
	--bg2: #eeecea;
	--bg3: #e5e2de;
	--nv: #0e1f3d;
	--nv2: #1a3260;
	--nv-dim: rgba(14, 31, 61, 0.07);
	--nv-glow: rgba(14, 31, 61, 0.18);
	--tl: #2e6b72;
	--tl-light: #3d8f98;
	--tl-dim: rgba(46, 107, 114, 0.1);
	--tl-glow: rgba(46, 107, 114, 0.2);
	--gd: #c9a84c;
	--gd-light: #e0be73;
	--gd-dim: rgba(201, 168, 76, 0.12);
	--rs: #a85858;
	--rs-dim: rgba(168, 88, 88, 0.1);
	--t1: #1a1f2e;
	--t2: #4b5b6e;
	--t3: #8c97a4;
	--t4: #b8c0ca;
	--bd: rgba(14, 31, 61, 0.08);
	--bd2: rgba(14, 31, 61, 0.13);
	--bd3: rgba(14, 31, 61, 0.22);
	--ff: 'Inter', sans-serif;
	--ease: cubic-bezier(0.16, 1, 0.3, 1);
	--r: 10px;
	--r2: 14px;
	--r3: 18px;
	--sh-sm: 0 1px 3px rgba(14, 31, 61, 0.06), 0 1px 2px
		rgba(14, 31, 61, 0.04);
	--sh-md: 0 4px 16px rgba(14, 31, 61, 0.08), 0 1px 4px
		rgba(14, 31, 61, 0.04);
	--sh-lg: 0 12px 36px rgba(14, 31, 61, 0.11), 0 2px 8px
		rgba(14, 31, 61, 0.06);
}

*, *::before, *::after {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

html {
	scroll-behavior: smooth;
}

body {
	font-family: var(--ff);
	background: var(--bg);
	color: var(--t1);
	min-height: 100vh;
	overflow-x: hidden;
	-webkit-font-smoothing: antialiased;
}

a {
	text-decoration: none;
	color: inherit;
}

button {
	font-family: var(--ff);
	cursor: pointer;
	border: none;
	background: none;
}

select {
	font-family: var(--ff);
	cursor: pointer;
}

input {
	font-family: var(--ff);
}

svg {
	flex-shrink: 0;
	display: block;
}

/* ══ BG ══ */
.bg-layer {
	position: fixed;
	inset: 0;
	z-index: 0;
	pointer-events: none;
	overflow: hidden;
}

.bg-blot {
	position: absolute;
	border-radius: 50%;
	filter: blur(120px);
}

.bb1 {
	width: 550px;
	height: 450px;
	opacity: 0.055;
	background: radial-gradient(circle, var(--tl) 0%, transparent 70%);
	top: -150px;
	right: -60px;
}

.bb2 {
	width: 450px;
	height: 380px;
	opacity: 0.04;
	background: radial-gradient(circle, var(--nv) 0%, transparent 70%);
	bottom: 0;
	left: -80px;
}

/* ══ PROGRESS ══ */
#pgbar {
	position: fixed;
	top: 0;
	left: 0;
	height: 2px;
	width: 0%;
	background: linear-gradient(90deg, var(--tl), var(--gd), var(--tl));
	background-size: 200% 100%;
	animation: barShimmer 3s linear infinite;
	z-index: 9999;
	transition: width 0.1s linear;
}

@
keyframes barShimmer {
	from {background-position: 200% 0
}

to {
	background-position: -200% 0
}

}

/* ══ NAVBAR ══ */
.navbar {
	position: sticky;
	top: 0;
	z-index: 500;
	height: 60px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 48px;
	background: rgba(244, 242, 238, 0.9);
	backdrop-filter: blur(20px) saturate(180%);
	border-bottom: 1px solid var(--bd);
	box-shadow: 0 1px 0 var(--bd);
}

.brand {
	display: flex;
	align-items: center;
	gap: 10px;
}

.brand-mark {
	width: 32px;
	height: 32px;
	border-radius: 8px;
	background: var(--nv);
	display: grid;
	place-items: center;
	color: var(--gd-light);
}

.brand-name {
	font-family: var(--ff);
	font-size: 1.1rem;
	font-weight: 700;
	color: var(--nv);
	letter-spacing: -0.3px;
}

.brand-name span {
	color: var(--tl);
}

.back-btn {
	display: flex;
	align-items: center;
	gap: 8px;
	font-size: 0.9rem;
	font-weight: 500;
	color: var(--t2);
	padding: 6px 14px;
	border-radius: 8px;
	border: 1px solid var(--bd2);
	transition: all 0.2s;
}

.back-btn:hover {
	color: var(--nv);
	background: var(--nv-dim);
	border-color: var(--bd3);
	transform: translateX(-2px);
}

.back-btn svg {
	color: var(--t2);
}

/* ══ PAGE WRAPPER ══ */
.page-wrapper {
	position: relative;
	z-index: 1;
	max-width: 1000px;
	margin: 0 auto;
	padding: 40px 48px 60px;
	animation: rise 0.7s var(--ease) both;
}

@
keyframes rise {
	from {opacity: 0;
	transform: translateY(20px)
}

to {
	opacity: 1;
	transform: translateY(0)
}

}

/* ══ HERO SECTION ══ */
.hero-section {
	background: var(--bg1);
	border: 1px solid var(--bd);
	border-radius: var(--r3);
	padding: 28px 32px;
	margin-bottom: 24px;
	box-shadow: var(--sh-md);
}

.hero-top {
	display: flex;
	align-items: center;
	gap: 10px;
	flex-wrap: wrap;
	margin-bottom: 16px;
}

.status-chip {
	display: inline-flex;
	align-items: center;
	gap: 6px;
	font-family: var(--ff);
	font-size: 0.7rem;
	font-weight: 600;
	letter-spacing: 0.5px;
	text-transform: uppercase;
	padding: 6px 14px;
	border-radius: 100px;
}

.st-live {
	background: rgba(46, 107, 114, 0.1);
	color: var(--tl);
	border: 1px solid rgba(46, 107, 114, 0.22);
}

.st-soon {
	background: var(--gd-dim);
	color: #8a6a1c;
	border: 1px solid rgba(201, 168, 76, 0.3);
}

.st-over {
	background: var(--bg2);
	color: var(--t3);
	border: 1px solid var(--bd);
}

.dot {
	width: 6px;
	height: 6px;
	border-radius: 50%;
	flex-shrink: 0;
}

.st-live .dot {
	background: var(--tl);
	animation: pulse 2s infinite;
}

.st-soon .dot {
	background: var(--gd);
}

@
keyframes pulse { 0%,100%{
	box-shadow: 0 0 0 0 rgba(46, 107, 114, 0.5)
}

50
%
{
box-shadow
:
0
0
0
6px
rgba(
46
,
107
,
114
,
0
)
}
}
.payment-chip {
	display: inline-flex;
	align-items: center;
	font-family: var(--ff);
	font-size: 0.7rem;
	font-weight: 600;
	letter-spacing: 0.5px;
	text-transform: uppercase;
	padding: 6px 14px;
	border-radius: 100px;
}

.pay-free {
	background: rgba(46, 107, 114, 0.08);
	color: var(--tl);
	border: 1px solid rgba(46, 107, 114, 0.2);
}

.pay-paid {
	background: var(--rs-dim);
	color: var(--rs);
	border: 1px solid rgba(168, 88, 88, 0.2);
}

.hero-title {
	font-family: var(--ff);
	font-size: 2.2rem;
	font-weight: 700;
	color: var(--nv);
	letter-spacing: -0.5px;
	margin-bottom: 12px;
	line-height: 1.2;
}

.hero-meta {
	display: flex;
	align-items: center;
	gap: 20px;
	flex-wrap: wrap;
	font-size: 0.9rem;
	color: var(--t2);
}

.hero-meta-item {
	display: flex;
	align-items: center;
	gap: 6px;
}

.hero-meta-item svg {
	color: var(--tl);
	width: 16px;
	height: 16px;
}

/* ══ CONTENT GRID ══ */
.content-grid {
	display: grid;
	grid-template-columns: 2fr 1fr;
	gap: 24px;
}

/* ══ MAIN CARD ══ */
.main-card {
	background: var(--bg1);
	border: 1px solid var(--bd);
	border-radius: var(--r3);
	overflow: hidden;
	box-shadow: var(--sh-sm);
}

.card-header {
	padding: 18px 24px;
	border-bottom: 1px solid var(--bd);
	background: var(--bg2);
	display: flex;
	align-items: center;
	gap: 10px;
}

.card-header h2 {
	font-family: var(--ff);
	font-size: 1.1rem;
	font-weight: 600;
	color: var(--nv);
}

.card-header svg {
	color: var(--tl);
}

.card-body {
	padding: 24px;
}

.card-body p {
	font-size: 0.95rem;
	line-height: 1.7;
	color: var(--t2);
	margin-bottom: 24px;
}

/* ══ INFO GRID ══ */
.info-grid {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 16px;
	margin-bottom: 24px;
}

.info-item {
	background: var(--bg2);
	border: 1px solid var(--bd);
	border-radius: var(--r);
	padding: 16px 18px;
	transition: border-color 0.2s;
}

.info-item:hover {
	border-color: var(--tl-dim);
}

.info-label {
	font-size: 0.65rem;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: 0.5px;
	color: var(--t3);
	margin-bottom: 6px;
}

.info-value {
	font-size: 1.1rem;
	font-weight: 600;
	color: var(--nv);
}

.info-value small {
	font-size: 0.8rem;
	font-weight: 400;
	color: var(--t3);
}

/* ══ SIDEBAR ══ */
.sidebar-card {
	background: var(--bg1);
	border: 1px solid var(--bd);
	border-radius: var(--r3);
	overflow: hidden;
	box-shadow: var(--sh-sm);
	position: sticky;
	top: 84px;
}

.sidebar-header {
	padding: 18px 20px;
	background: var(--nv);
	color: white;
}

.sidebar-header h3 {
	font-size: 0.9rem;
	font-weight: 600;
	letter-spacing: 0.3px;
}

.sidebar-body {
	padding: 20px;
}

/* Prize Box */
.prize-box {
	text-align: center;
	padding: 20px;
	background: var(--gd-dim);
	border: 1px solid var(--gd);
	border-radius: var(--r);
	margin-bottom: 24px;
}

.prize-label {
	font-size: 0.7rem;
	text-transform: uppercase;
	color: var(--t2);
	margin-bottom: 4px;
}

.prize-value {
	font-size: 1.8rem;
	font-weight: 700;
	color: var(--nv);
}

.date-box {
	display: flex;
	align-items: center;
	gap: 12px;
	padding: 14px 0;
	border-bottom: 1px solid var(--bd);
}

.date-box:last-child {
	border-bottom: none;
}

.date-icon {
	width: 40px;
	height: 40px;
	border-radius: 8px;
	background: var(--tl-dim);
	display: grid;
	place-items: center;
	color: var(--tl);
}

.date-info {
	flex: 1;
}

.date-label {
	font-size: 0.65rem;
	text-transform: uppercase;
	color: var(--t3);
	margin-bottom: 2px;
}

.date-value {
	font-size: 0.95rem;
	font-weight: 600;
	color: var(--nv);
}

/* ══ BUTTONS ══ */
.register-btn {
	display: block;
	width: 100%;
	text-align: center;
	padding: 14px;
	background: var(--tl);
	color: white;
	border-radius: 10px;
	font-weight: 600;
	font-size: 1rem;
	transition: all 0.2s var(--ease);
	margin: 20px 0 12px;
	box-shadow: 0 4px 12px var(--tl-glow);
}

.register-btn:hover {
	background: var(--tl-light);
	transform: translateY(-2px);
	box-shadow: 0 8px 20px var(--tl-glow);
}

.register-btn.disabled {
	background: var(--bg3);
	color: var(--t3);
	pointer-events: none;
	box-shadow: none;
	border: 1px solid var(--bd);
}

.register-btn svg {
	display: inline;
	margin-right: 6px;
}

/* ══ FOOTER ══ */
.site-footer {
	position: relative;
	z-index: 1;
	background: var(--nv);
	padding: 28px 48px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	flex-wrap: wrap;
	gap: 16px;
}

.f-brand {
	font-family: var(--ff);
	font-size: 0.95rem;
	font-weight: 600;
	color: rgba(255, 255, 255, 0.65);
}

.f-brand span {
	color: var(--gd-light);
}

.f-copy {
	font-family: var(--ff);
	font-size: 0.62rem;
	color: rgba(255, 255, 255, 0.28);
	letter-spacing: 0.5px;
}

/* ══ RESPONSIVE ══ */
@media ( max-width :900px) {
	.content-grid {
		grid-template-columns: 1fr;
	}
	.navbar {
		padding: 0 24px;
	}
	.page-wrapper {
		padding: 30px 24px 50px;
	}
}

@media ( max-width :620px) {
	.navbar {
		padding: 0 16px;
	}
	.page-wrapper {
		padding: 20px 16px 40px;
	}
	.hero-section {
		padding: 20px;
	}
	.hero-title {
		font-size: 1.8rem;
	}
	.info-grid {
		grid-template-columns: 1fr;
	}
	.site-footer {
		padding: 20px 16px;
		flex-direction: column;
		text-align: center;
	}
}
</style>
</head>
<body>

	<div class="bg-layer">
		<div class="bg-blot bb1"></div>
		<div class="bg-blot bb2"></div>
	</div>
	<div id="pgbar"></div>

	<!-- NAVBAR -->
	<header class="navbar">
		<a href="home" class="brand">
			<div class="brand-mark">
				<svg width="15" height="15" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2.5">
        <polyline points="13 2 3 14 12 14 11 22 21 10 12 10 13 2" />
      </svg>
			</div> <span class="brand-name">Hack<span>Portal</span></span>
		</a> <a href="home" class="back-btn"> <svg width="15" height="15"
				viewBox="0 0 24 24" fill="none" stroke="currentColor"
				stroke-width="2.2">
      <line x1="19" y1="12" x2="5" y2="12" />
				<polyline points="12 19 5 12 12 5" />
    </svg> Back to Home
		</a>
	</header>

	<!-- PAGE WRAPPER -->
	<div class="page-wrapper">

		<!-- HERO SECTION -->
		<div class="hero-section">
			<div class="hero-top">
				<!-- Status Chip -->
				<c:choose>
					<c:when test="${hackathon.status == 'ONGOING'}">
						<span class="status-chip st-live"><span class="dot"></span>Live
							Now</span>
					</c:when>
					<c:when test="${hackathon.status == 'UPCOMING'}">
						<span class="status-chip st-soon"><span class="dot"></span>Upcoming</span>
					</c:when>
					<c:otherwise>
						<span class="status-chip st-over">Ended</span>
					</c:otherwise>
				</c:choose>

				<!-- Payment Chip -->
				<c:choose>
					<c:when test="${hackathon.payment == 'FREE'}">
						<span class="payment-chip pay-free">Free Entry</span>
					</c:when>
					<c:otherwise>
						<span class="payment-chip pay-paid">Paid Entry</span>
					</c:otherwise>
				</c:choose>
			</div>

			<h1 class="hero-title">${hackathon.title}</h1>

			<div class="hero-meta">
				<c:if test="${not empty hackathon.location}">
					<span class="hero-meta-item"> <svg viewBox="0 0 24 24"
							fill="none" stroke="currentColor" stroke-width="2">
            <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z" />
            <circle cx="12" cy="10" r="3" />
          </svg> ${hackathon.location}
					</span>
				</c:if>

				<c:if test="${not empty hackathon.eventType}">
					<span class="hero-meta-item"> <svg viewBox="0 0 24 24"
							fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="12" cy="12" r="10" />
            <line x1="2" y1="12" x2="22" y2="12" />
            <path
								d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z" />
          </svg> ${hackathon.eventType}
					</span>
				</c:if>
			</div>
		</div>

		<!-- CONTENT GRID -->
		<div class="content-grid">

			<!-- MAIN CONTENT -->
			<div>
				<div class="main-card">
					<div class="card-header">
						<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
							stroke="currentColor" stroke-width="2">
            <path
								d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z" />
            <polyline points="14 2 14 8 20 8" />
          </svg>
						<h2>About the Hackathon</h2>
					</div>
					<div class="card-body">
						<p>
							<c:choose>
								<c:when test="${not empty hackathon.description}">
                ${hackathon.description}
              </c:when>
								<c:otherwise>
                Join this exciting hackathon and showcase your skills! 
                Collaborate with talented developers, designers, and innovators 
                to build something extraordinary. No description provided yet.
              </c:otherwise>
							</c:choose>
						</p>

						<!-- INFO GRID -->
						<div class="info-grid">
							<div class="info-item">
								<div class="info-label">Team Size</div>
								<div class="info-value">
									${hackathon.minTeamSize} — ${hackathon.maxTeamSize} <small>members</small>
								</div>
							</div>

							<div class="info-item">
								<div class="info-label">Entry Type</div>
								<div class="info-value">${hackathon.payment}</div>
							</div>

							<c:if test="${not empty hackathon.userTypeId}">
								<div class="info-item">
									<div class="info-label">Eligibility</div>
									<div class="info-value">
										<c:choose>
											<c:when test="${hackathon.userTypeId == 1}">Working Professional</c:when>
											<c:when test="${hackathon.userTypeId == 2}">Fresher</c:when>
											<c:when test="${hackathon.userTypeId == 3}">College Student</c:when>
											<c:when test="${hackathon.userTypeId == 4}">School Student</c:when>
											<c:otherwise>All are welcome</c:otherwise>
										</c:choose>
									</div>
								</div>
							</c:if>

							<c:if test="${not empty hackathon.userId}">
								<div class="info-item">
									<div class="info-label">Organized by</div>
									<div class="info-value">Team ID: ${hackathon.userId}</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>

			<!-- SIDEBAR -->
			<div>
				<div class="sidebar-card">
					<div class="sidebar-header">
						<h3>Registration Info</h3>
					</div>
					<div class="sidebar-body">

						<!-- Prize Pool (default text since no prize field) -->
						<div class="prize-box">
							<div class="prize-label">Prize Pool</div>
							<div class="prize-value">To be announced</div>
						</div>

						<!-- Dates -->
						<c:if test="${not empty hackathon.registrationStartDate}">
							<div class="date-box">
								<div class="date-icon">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="2">
                  <rect x="3" y="4" width="18" height="18" rx="2" />
                  <line x1="16" y1="2" x2="16" y2="6" />
                  <line x1="8" y1="2" x2="8" y2="6" />
                  <line x1="3" y1="10" x2="21" y2="10" />
                </svg>
								</div>
								<div class="date-info">
									<div class="date-label">Registration Starts</div>
									<div class="date-value">${hackathon.registrationStartDate}</div>
								</div>
							</div>
						</c:if>

						<c:if test="${not empty hackathon.registrationEndDate}">
							<div class="date-box">
								<div class="date-icon">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="2">
                  <rect x="3" y="4" width="18" height="18" rx="2" />
                  <line x1="16" y1="2" x2="16" y2="6" />
                  <line x1="8" y1="2" x2="8" y2="6" />
                  <line x1="3" y1="10" x2="21" y2="10" />
                </svg>
								</div>
								<div class="date-info">
									<div class="date-label">Registration Ends</div>
									<div class="date-value">${hackathon.registrationEndDate}</div>
								</div>
							</div>
						</c:if>

						<!-- Register Button -->
						<c:choose>
							<c:when test="${not empty registered and registered}">
								<div class="register-btn disabled">
									<svg width="16" height="16" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="2.5">
                  <polyline points="20 6 9 17 4 12" />
                </svg>
									Already Registered
								</div>
							</c:when>
							<c:when test="${hackathon.status == 'COMPLETED'}">
								<div class="register-btn disabled">Event Ended</div>
							</c:when>
							<c:otherwise>
								<a href="registerHackathon?hackathonId=${hackathon.hackathonId}"
									class="register-btn"> Register Now <svg width="14"
										height="14" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="2.5">
                  <line x1="5" y1="12" x2="19" y2="12" />
                  <polyline points="12 5 19 12 12 19" />
                </svg>
								</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<footer class="site-footer">
		<div class="f-brand">
			Hack<span>Portal</span> — Your Gateway to Innovation
		</div>
		<div class="f-copy">&copy; 2026 CodeVerse. All rights reserved.</div>
	</footer>

	<script>
		(function() {
			// Progress bar
			var pb = document.getElementById('pgbar');
			window
					.addEventListener(
							'scroll',
							function() {
								var s = window.scrollY, h = document.documentElement.scrollHeight
										- window.innerHeight;
								pb.style.width = (h > 0 ? (s / h) * 100 : 0)
										+ '%';
							});
		})();
	</script>

</body>
</html>