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
			<div class="container">
				<div class="row">
					<div class="col">
						<img src="/imgs/lance-asper-Wl6OeSGyOf4-unsplash.jpg" alt=""
							class="news-article-left" />
					</div>
					<div class="col">
						<h2>
							<c:out value="${news.news_title}" />
						</h2>
						<p class="news-article-subtitle">
							<c:out value="${news.news_subtitle}" />
						</p>
						<p class="news-article-date-author">
							<c:out value="${news.created_at}" />
							by Chris Hogan
						</p>
						<p class="news-article-story">
							<c:out value="${news.news_article}" />
						</p>
					</div>
				</div>
			</div>

		</section>
		<section class="other-news">
			<div class="container">
				<h2>Current News</h2>
			</div>
		</section>
		<section class="news-article-other-news">
			<div class="container">
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
								src="/imgs/alec-jones-WDsmqzxy8Ig-unsplash.jpg" alt="" />
						</div>
					</div>
					<div class="club-news d-flex gap-3">
						<div class="club-news-left w-50">
							<h3 class="club-news-title">
								<c:out value="${allNews[1].news_title}" />
							</h3>
							<p class="club-news-subtitle">
								<c:out value="${allNews[1].news_subtitle}" />
							</p>
							<p class="club-news-summary">
								<c:out value="${allNews[1].news_description}" />
							</p>
						</div>
						<div class="club-news-right w-50">
							<img class="club-news-right-img"
								src="/imgs/andreas-brun-fjDDh6iOBQA-unsplash.jpg" alt="" />
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>