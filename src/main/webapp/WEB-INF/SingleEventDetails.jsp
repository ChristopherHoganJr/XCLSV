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
		<section class="singleEvent my-5">
			<div class="container">
				<div class="row gap-3">
					<div class="col">
						<table>
							<tr>
								<td class="singleEventIcon"><div class="titleSquare"></div></td>
								<td class="singleEventDesc">
									<h2><c:out value="${event.event_name}" /></h2>
									<h3><c:out value="${event.event_date}" /></h3>
								</td>
							</tr>
							<tr>
								<td class="singleEventIcon"><div
										class="titleSquareSm align-self-start"></div></td>
								<td class="singleEventDesc">
									<h4>12:00 - 17:00</h4>
								</td>
							</tr>
							<tr>
								<td class="singleEventIcon"><div class="titleSquareSm"></div></td>
								<td class="singleEventDesc">
									<h4><c:out value="${event.event_location}" /></h4>
								</td>
							</tr>
							<tr>
								<td class="singleEventIcon"><div class="titleSquareSm"></div></td>
								<td class="singleEventDesc">
									<h4><c:out value="${event.event_description}" /></h4>
								</td>
							</tr>
						</table>
					</div>
					<div class="col singleEventBg"
						style="background-image: url('/imgs/paul-kansonkho-ivRiPM_kHw0-unsplash.jpg')">

					</div>
				</div>
			</div>
		</section>

	</main>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>