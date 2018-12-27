<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="${pageContext.request.contextPath}/js/jquery-2.1.0.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootswatch.js"></script>
</head>
<script type="text/javascript">
 $(document).ready(function(){
	$('#save').click(function(){
		var form = $('#updateForm').attr("method", "post").attr("action", "${pageContext.request.contextPath}/member/update");
		form.submit();
	});
	 
 });

</script>

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

			<!-- ★★★ Contents -->
			<div class="col-lg-12">
				<div class="page-header2">
					<h3>회원정보</h3>
				</div>

        <form id="updateForm" >
					<div class="table-responsive">
						<table class="table table-bordered">
							<colgroup>
								<col width="120">
								<col width="*">
								<col width="120">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th class="text-center">ID</th>
									<td class="text-left"><input type="text" name="id"
										class="form-control" id="id" placeholder="아이디" value="${info.id }"
										readonly></td>
									<th class="text-center">회원명</th>
									<td class="text-left"><input type="text" name="nm"
										class="form-control" id="name" placeholder="이름" value="${info.nm }">
									</td>
								</tr>
								<tr>
									<th class="text-center">생년월일</th>
									<td class="text-left"><input type="text" name="birth"
										class="form-control" id="birth" placeholder="생일"
										value="${info.birth }"></td>
									<th class="text-center">성별</th>
									<td class="text-left">
									  <c:choose>
									    <c:when test="${info.gender eq 0 }">
									      <div class="radio">
	                        <label> <input type="radio" name="gender"
	                          id="optionsRadios1" value="0" checked="checked"> 남자
	                        </label>
	                      </div>
	                      <div class="radio">
	                        <label> <input type="radio" name="gender"
	                          id="optionsRadios2" value="1"> 여자
	                        </label>
	                      </div>
									    </c:when>
									    <c:otherwise>
									      <div class="radio">
	                        <label> <input type="radio" name="gender"
	                          id="optionsRadios1" value="0"> 남자
	                        </label>
	                      </div>
	                      <div class="radio">
	                        <label> <input type="radio" name="gender"
	                          id="optionsRadios2" value="1" checked="checked"> 여자
	                        </label>
	                      </div>
									    </c:otherwise>
	                  </c:choose>
									</td>
								</tr>
								<tr>
									<th class="text-center">전화번호</th>
									<td class="text-left"><input type="text" id="phone" name="phone"
										class="form-control" placeholder="이름" value="${info.phone }">
									</td>
									<th class="text-center">주소</th>
									<td class="text-left"><input type="text" id="addr" name="addr"
										class="form-control" placeholder="이름" value="${info.addr }">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
        

				<div class="pull-right">
					<button type="button" id="save" class="btn btn-success btn-default">저장</button>
					<a href="./list.html" class="btn btn-large btn-default">목록</a>
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

</body>
</html>