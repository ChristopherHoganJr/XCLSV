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
				<li class="nav-links-link nav-red-box"><a href="/home">LOG
						IN</a></li>
			</ul>
		</div>
	</nav>
	<main>
		<section class="userdash-landing">
			<div
				class="userdash-landing-text container d-flex flex-column align-items-start justify-content-end h-100 pb-4">
				<h2 class="mb-0">WELCOME BACK <c:out value="${currentUser.userName}" /> </h2>
				<p>Thank you for being a valuable member for 1 year and 5
					months.</p>
			</div>
		</section>
		<section class="userdash-event-count">
			<div
				class="container d-flex flex-column justify-content-center align-items-center">
				<p><c:out value="${currentUser.userName}" />, YOU HAVE ATTENDED 4 EVENTS WITH US.</p>
				<p>We hope to see you again soon!</p>
				<div class="row">
				<a href="#" class="btn btn-lg btn-warning">CALENDAR</a>
				<c:if test="${currentUser.userType eq 'Admin' }">
					<a href="#" class="btn btn-lg btn-success">Create Event</a>
					<a href="#" class="btn btn-lg btn-success">Create Event</a>
				</c:if>
				</div>
			</div>
		</section>
		<section class="userdash-chat my-5">
			<div class="container">
				<h2>Chat Board</h2>
				<p>Remember to use community guidelines.</p>
				<div class="userdash-chat-board">
					<div class="chat-item">
						<h4 class="chat-item-username">User 0101</h4>
						<p class="chat-item-message">Did you pick up the LaFerrari</p>
					</div>
					<div class="chat-item">
						<h4 class="chat-item-username">User 0202</h4>
						<p class="chat-item-message">No, they wanted 2M for it. I told
							him the highest I'll go is 1.7M.</p>
					</div>
					<div class="chat-item">
						<h4 class="chat-item-username">User 0303</h4>
						<p class="chat-item-message">I'll give you 3 days to sign the
							paperwork or I'll pay 2M cash.</p>
					</div>
					<div class="chat-item">
						<h4 class="chat-item-username">User 0101</h4>
						<p class="chat-item-message">@User 0303, why are you going to
							do that to him?</p>
					</div>
					<div class="chat-item">
						<h4 class="chat-item-username">User 0303</h4>
						<p class="chat-item-message">He has a chance to put it in his
							collection before it goes in mine.</p>
					</div>
					<div class="chat-item">
						<h4 class="chat-item-username">User 0202</h4>
						<p class="chat-item-message">Just picked it up for 1.8M. @User
							0303, its mine.</p>
					</div>
				</div>
				<div class="userdash-chat-section">
					<p>Type your comment here:</p>
					<div class="userdash-chat-section-input W-100 d-flex gap-3">
						<input class="w-100" type="text" />
						<button class="btn btn-lg btn-success">SEND</button>
					</div>
				</div>
			</div>
		</section>

	</main>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>