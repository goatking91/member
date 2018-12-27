<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BitCamp</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootswatch.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootswatch.js"></script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<script type="text/javascript">
	$(document).ready(function(){
// 		$('#update').click(function(){
// 			var allData = {'id':$('#id').val(),
// 						   'nm':$('#name').val(),
// 						   'birth':$('#birth').val(),
// 						   'gender':$('#gender').val(),
// 						   'phone':$('#phone'.val(),
// 						   'addr':$('#addr').val()}
// 			$.ajax(
// 					{
// 						url : "member/update",  //페이지 주소 수정 _1
// 						dataType : "JSON",           //dataType 수정_2
// 						async : true ,
// 						type : "GET",
// 						data : allData ,
// 						success : function(data){	
// 						}
// 					})
    $('#update').click(function(){
      location.href='${pageContext.request.contextPath}/member/update?id=${info.id }';
    });
	});
	

</script>
<body>

<!-- Main Navigation ========================================================================================== -->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">BitCamp</a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">회원관리</a>
                	<ul class="dropdown-menu">
                        <li><a href="#">회원등록</a></li>
                        <li><a href="#">회원목록</a></li>
                    </ul>
                </li>
                <li>
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">미디어관리</a>
                	<ul class="dropdown-menu">
                        <li><a href="#">미디어등록</a></li>
                        <li><a href="#">미디어목록</a></li>
                    </ul>
                </li>
                <li><a href="#">대출관리</a></li>
                <li><a href="#">공지사항</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${ContextPath}/member/logout">로그아웃 (userId)</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">설정 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">개인정보</a></li>
                    </ul>
                </li>
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
                        <td id="id" class="text-left">${info.id }</td>
                        <th class="text-center">회원명</th>
                        <td id="name" class="text-left">${info.nm }</td>
                    </tr>
                    <tr>
                        <th class="text-center">생년월일</th>
                        <td id="birth" class="text-left">${info.birth}</td>
                        <th class="text-center">성별</th>
                        <td id="gender" class="text-left">
                        <c:if test="${info.gender eq 0}">남자</c:if>
                        <c:if test="${info.gender eq 1}">여자</c:if>
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center">전화번호</th>
                        <td id="phone" class="text-left">${info.phone}</td>
                        <th class="text-center">주소</th>
                        <td id="addr" class="text-left">${info.addr}</td>
                    </tr>
                    </tbody>
                </table>
            </div>

            
            <div class="pull-right">
            	  <!--button class="btn btn-success">수정</button-->
                <button id="update" class="btn btn-success btn-default">수정</button>
                <a href="${pageContext.request.contextPath }/member/delete?id=${info.id}" class="btn btn-large btn-default">삭제</a>
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