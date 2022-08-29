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
		<div class="container">
			<div class="row">
				<div class="col">
					<h2>Register</h2>
					<form:form action="/register" method="post"
						modelAttribute="newUser">
						<form:errors style="color: red" path="*" />
						<table class="table">
							<tbody>
								<tr>
									<td><form:label path="userName">Username:</form:label></td>
									<td><form:input path="userName" /></td>
								</tr>
								<tr>
									<td><form:label path="email">email:</form:label></td>
									<td><form:input path="email" /></td>
								</tr>
								<tr>
									<td><form:label path="password">Password:</form:label></td>
									<td><form:password path="password" /></td>
								</tr>
								<tr>
									<td><form:label path="confirmPw">Confirm Password:</form:label></td>
									<td><form:password path="confirmPw" /></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" value="Register"
										class="btn btn-sm btn-primary" /></td>
								</tr>
							</tbody>
						</table>
					</form:form>
				</div>
				<div class="col">
					<h2>Log in</h2>
					<form:form action="/login" method="post" modelAttribute="newLogin">
						<div class="container">
							<form:errors style="color: red" path="*" />
						</div>
						<table class="table">
							<tbody>
								<tr>
									<td><label>Email:</label></td>
									<td><form:input path="email" /></td>
								</tr>
								<tr>
									<td><label>Password:</label></td>
									<td><form:password path="password" /></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" value="Log in"
										class="btn btn-sm btn-primary" /></td>
								</tr>
							</tbody>
						</table>
					</form:form>
				</div>
			</div>
		</div>
	</main>
</body>
</html>
