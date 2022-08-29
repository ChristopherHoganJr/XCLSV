<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XCLSV</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">

<script src="/webjars/jquery/jquery.min.js"></script>

<link rel="stylesheet" href="/css/styles.css">
</head>
<body>
	<nav>
		<div
			class="container d-flex justify-content-between align-items-center">
			<img src="/imgs/XCLSV.png" alt="" />
			<ul class="nav-links">
				<li class="nav-links-link"><a href="/news">NEWS</a></li>
				<li class="nav-links-link"><a href="/events">EVENTS</a></li>
				<li class="nav-links-link"><a href="/about">ABOUT</a></li>
				<li class="nav-links-link nav-red-box"><a href="/join">JOIN</a></li>
				<li class="nav-links-link nav-red-box"><a href="/login">LOG
						IN</a></li>
			</ul>
		</div>
	</nav>
	<main>
		<section class="landing">
			<div class="landing-container"></div>
			<div class="container">
				<div
					class="landing-text-container d-flex flex-column justify-content-center align-items-start">
					<h2 class="landing-text">EVENT ANNOUCMENT</h2>
					<p class="landing-text">Annual 2022 XCLSV meet featured some of
						the most elite Ferraris and exclusive race cars.</p>
					<p class="landing-text">Our club is one of the fastest growing
						elite car clubs in the San Francisco Bay Area</p>
					<a href="#" class="btn btn-lg btn-warning w-auto hero-button">VIEW
						GALLERY</a>
				</div>
			</div>
		</section>
		<section class="landing-community">
			<div class="container d-flex gap-5 justify-content-center align-items-center h-100">
				<div class="landing-community-left"></div>
				<div class="landing-community-right">
					<h3>SEE OUR COMMUNITY</h3>
					<p>We are the leading Ferrari club in the world.</p>
					<p>We are a community of entrepreneurs, business leaders, &amp;
						Ferrari enthusiasts.</p>
					<p>
						<q>What's behind you doesn't matter.</q>
					</p>
					<p>- Enzo Ferrari</p>

					<a href="#" class="btn btn-lg btn-success">Event Calendar</a>
					<p>Join and see an event of ours today.</p>
				</div>
			</div>
		</section>
		<section class="landing-quote-block">
			<div class="container">
				<h3><q>A dream does not become reality through magic, it takes sweat, determination, and hard work.</q></h3>
				<h4>- Colin Powell</h4>
			</div>
		</section>
		<section class="landing-become-member">
			<div class="container d-flex gap-5 justify-content-center align-items-center h-100">
				<div class="landing-become-member-left w-50">
					<h3>BECOMING A MEMBER</h3>
					<p>Complete steps below to join our XCLSV car club.</p>
					<div class="landing-become-member-item d-flex gap-5 mb-4">
						<div class="member-counter d-flex">
							<p class="counter-line">1</p>
						</div>
						<div class="member-info">
							<p>Go to our featured events and meet our current members.</p>
							<a href="#" class="btn btn-lg btn-warning">CALENDAR</a>
						</div>
					</div>
					<div class="landing-become-member-item d-flex gap-5 mb-4">
						<div class="member-counter">
							<p>2</p>
						</div>
						<div class="member-info">
							<p>SUBMIT AN APPLICATION. EVERY APPLICATION IS SCREENED THROUGH OUR CLUB BOARD.</p>
							<a href="#" class="btn btn-lg btn-success">APPLICATION</a>
						</div>
					</div>
					<div class="landing-become-member-item d-flex gap-5">
						<div class="member-counter">
							<p>3</p>
						</div>
						<div class="member-info">
							<p>Once application approved, we will schedule an interview with you.</p>
						</div>
					</div>
				</div>
				<div class="landing-become-member-right"></div>
			</div>
		</section>
	</main>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>