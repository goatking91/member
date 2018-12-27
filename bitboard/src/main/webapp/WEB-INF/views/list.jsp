<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown">미디어관리</a>
						<ul class="dropdown-menu">
							<li><a href="#">미디어등록</a></li>
							<li><a href="#">미디어목록</a></li>
						</ul></li>
					<li><a href="#">대출관리</a></li>
					<li><a href="#">공지사항</a></li>
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

	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<!-- ★★★ Tab Panel -->
				<div id="communityList" class="tab-content">
					<!-- ★★★ 가입 커뮤니티 -->
					<div class="tab-pane fade active in" id="joined">
						<div class="page-header">
							<h2 id="container">회원목록</h2>
						</div>

						<div class="panel panel-default">
							<div class="panel-body">
								<form class="form-search">
									<div class="input-group">
										<input type="text" class="form-control"
											placeholder="회원명 또는 ID"> <span
											class="input-group-btn">
											<button type="submit" class="btn btn-primary">검색</button>
										</span>
									</div>
								</form>
							</div>
						</div>

						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">ID</th>
										<th class="text-center">회원명</th>
										<th class="text-center">전화번호</th>
										<th class="text-center">가입일</th>
									</tr>
								</thead>
								<tbody>
									<!--<tr><td colspan="5" class="text-center">가입한 회원이 없습니다.</td></tr>-->
									<tr>
										<td class="text-center">1</td>
										<td>gglim</td>
										<td><a
											href="${pageContext.request.contextPath}/member/view">임경균</a></td>
										<td>010-0000-0000</td>
										<td>2004/02/18</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- Footer ========================================================================================== -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-unstyled">
						<li class="pull-right"><a href="#top">위로 이동</a></li>
						<li><a href="#">BitCamp 홈</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">도움말</a></li>
						<li><a href="#">회원탈퇴</a></li>
					</ul>
					<p>© BitCamp 2018.</p>
				</div>
			</div>
		</footer>
	</div>


	<script src="${pageContext.request.contextPath}/js/jquery-2.1.0.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootswatch.js"></script>
</body>
</html>