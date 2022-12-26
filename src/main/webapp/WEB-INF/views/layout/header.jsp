<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
	body {
			background-image: url("${contextPath }/resources/image/backImg.jpg");
		}
</style>
</head>
<body>
<div class="container bg-white hed">
	<div class="d-flex justify-content-between">
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link active" href="#">Main</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">자유게시판</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Link</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">Disabled</a>
			</li>
		</ul>
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<a class="nav-link" href="#">회원가입</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">로그인</a>
			</li>
		</ul>
	</div>
	<div class="container" style="width: 1200px; margin-bottom: 20px; padding: 10px 30px; background-color: white; box-shadow: 5px 5px 5px 5px;">
</div>

