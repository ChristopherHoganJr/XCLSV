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
		<section class="my-5">
			<div class="container d-flex flex-column gap-4">
				<div class="row">
					<div class="col">
						<img class="news-landing-top-left-img w-100"
							src="/imgs/paul-kansonkho-ivRiPM_kHw0-unsplash.jpg" alt="" />
					</div>
					<div class="col d-flex flex-column gap-4">
						<h1>Latest News</h1>
						<p>Stay up to date with the newest news and updates from our
							club</p>
						<div class="club-news latest-news d-flex gap-3">
							<div class="club-news-left w-50">
								<h3 class="club-news-title">
									<c:out value="${allNews[0].news_title}" />
								</h3>
								<p class="club-news-subtitle">
									<c:out value="${allNews[0].news_subtitle}" />
								</p>
								<p class="club-news-summary">
									<c:out value="${allNews[0].news_description}" />
								</p>
							</div>
							<div class="club-news-right w-50">
								<img class="club-news-right-img"
									src="imgs/adrian-n-jWM41o-TMAw-unsplash.jpg" alt="" />
							</div>
						</div>
						<div class="club-news d-flex gap-3">
							<div class="club-news-left w-50">
								<h3 class="club-news-title">
									<c:out value="${allNews[0].news_title}" />
								</h3>
								<p class="club-news-subtitle">
									<c:out value="${allNews[0].news_subtitle}" />
								</p>
								<p class="club-news-summary">
									<c:out value="${allNews[0].news_description}" />
								</p>
							</div>
							<div class="club-news-right w-50">
								<img class="club-news-right-img"
									src="imgs/jannis-lucas-jBmNhftLcrY-unsplash.jpg" alt="" />
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div
							class="news-landing-right d-flex justify-content-between align-items-center gap-4">
							<div class="club-news d-flex gap-3">
								<div class="club-news-left w-50">
									<h3 class="club-news-title">
										<c:out value="${allNews[0].news_title}" />
									</h3>
									<p class="club-news-subtitle">
										<c:out value="${allNews[0].news_subtitle}" />
									</p>
									<p class="club-news-summary">
										<c:out value="${allNews[0].news_description}" />
									</p>
								</div>
								<div class="club-news-right w-50">
									<img class="club-news-right-img"
										src="imgs/jannis-lucas-jBmNhftLcrY-unsplash.jpg" alt="" />
								</div>
							</div>

						</div>
					</div>
					<div class="col">
						<div class="club-news d-flex gap-3">
							<div class="club-news-left w-50">
								<h3 class="club-news-title">
									<c:out value="${allNews[0].news_title}" />
								</h3>
								<p class="club-news-subtitle">
									<c:out value="${allNews[0].news_subtitle}" />
								</p>
								<p class="club-news-summary">
									<c:out value="${allNews[0].news_description}" />
								</p>
							</div>
							<div class="club-news-right w-50">
								<img class="club-news-right-img"
									src="imgs/lance-asper-pELKFdRXrO4-unsplash.jpg" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="create-account-block">
			<div class="container">
				<div class=" d-flex justify-content-center align-items-center">
					<div class="create-account-block-text w-50">
						<h3>CREATE AN ACCOUNT</h3>
						<p>Join us today and have access to participate in our
							discussion board, purchase event tickets, and stay up to date
							with our latest news.</p>
					</div>
					<div class="create-account-block-button">
						<a href="#" class="btn btn-lg btn-warning">CREATE HERE</a>
					</div>
				</div>
			</div>

		</section>
		<section class="more-news my-5">
			<div class="container">
				<div class="row">
					<div class="col">
						<a href="/news/<c:out value="${allNews[0].id}" />">
							<div class="club-news d-flex gap-3">
								<div class="club-news-left w-50">
									<h3 class="club-news-title">
										<c:out value="${allNews[0].news_title}" />
									</h3>
									<p class="club-news-subtitle">
										<c:out value="${allNews[0].news_subtitle}" />
									</p>
									<p class="club-news-summary">
										<c:out value="${allNews[0].news_description}" />
									</p>
								</div>
								<div class="club-news-right w-50">
									<img class="club-news-right-img"
										src="imgs/lance-asper-Wl6OeSGyOf4-unsplash.jpg" alt="" />
								</div>
							</div>
						</a>
					</div>
					<div class="col">
						<div class="club-news d-flex gap-3">
							<div class="club-news-left w-50">
								<h3 class="club-news-title">
									<c:out value="${allNews[0].news_title}" />
								</h3>
								<p class="club-news-subtitle">
									<c:out value="${allNews[0].news_subtitle}" />
								</p>
								<p class="club-news-summary">
									<c:out value="${allNews[0].news_description}" />
								</p>
							</div>
							<div class="club-news-right w-50">
								<img class="club-news-right-img"
									src="imgs/william-chiesurin-0jEmpjrUp9o-unsplash.jpg" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>