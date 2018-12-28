<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<c:set var="bcode" value="${param.bcode }" />
<c:set var="ccode" value="${param.ccode }" />
<c:set var="pg" value="${param.pg }" />
<c:set var="key" value="${param.key }" />
<c:set var="word" value="${param.word }" />
<c:set var="seq" value="${param.seq }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BitCamp</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootswatch.min.css"
	rel="stylesheet">
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<!-- Main Navigation ========================================================================================== -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">BitCamp</a>
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">회원관리</a>
						<ul class="dropdown-menu">
							<li><a href="#">회원등록</a></li>
							<li><a href="#">회원목록</a></li>
						</ul></li>
					<c:set var="idx" value="0" />
					<c:forEach var="board" items="${menu }" varStatus="i">
						<c:if test="${board.ccode != idx}">
							<c:choose>
								<c:when test="${board.ccode == ccode }">
									<li class="active">
								</c:when>
								<c:otherwise>
									<li>
								</c:otherwise>
							</c:choose>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">${board.cname }</a>
							<c:set var="idx" value="${board.ccode }" />
							<ul class="dropdown-menu">
						</c:if>
						<li><a
							href="${root}/${board.control}/list.do?bcode=${board.bcode }&ccode=${board.ccode }&pg=1&key=&word=">${board.bname }</a></li>
						<c:if test="${i.index < menu.size() - 1 }">
							<c:if test="${idx !=  menu.get(i.index + 1).ccode}">
				</ul>
				</c:if>
				</c:if>
				</c:forEach>
				</ul>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${ContextPath}/member/logout">로그아웃 (userId)</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">설정 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">개인정보</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>