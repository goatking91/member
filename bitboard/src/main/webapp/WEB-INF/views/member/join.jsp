<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/public.jsp" %>
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
		</div>
	</div>
	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="page-header">
					<h2 id="container">회원 가입하기</h2>
				</div>

				<div class="well">
					<p>회원가입을 위해 아래 내용들을 작성해 주세요.</p>
					<form class="form-horizontal" method="post"
						action="${pageContext.request.contextPath}/member/insert">
						<fieldset>
							<div class="form-group">
								<label class="col-lg-2 control-label">아이디</label>

								<div class="col-lg-8">
									<input type="text" class="form-control" name="id" id="id"
										placeholder="아이디">
								</div>
								<div class="col-lg-2">
								<button id="idcheck" type="button" class="btn btn-primary">중복확인</button>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이름</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="nm" id="nm"
										placeholder="이름">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호</label>

								<div class="col-lg-10">
									<input type="password" class="form-control" name="password"
										id="password" placeholder="비밀번호">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호 확인</label>

								<div class="col-lg-10">
									<input type="password" class="form-control"
										placeholder="비밀번호 확인">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">생년월일</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="birth" id="birth"
										placeholder="생년월일 (입력 예: 2000-12-01)">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">성별</label>

								<div class="col-lg-10">
									<div class="radio">
										<label> <input type="radio" name="gender" id="gender"
											id="optionsRadios1" value="0" checked> 남자
										</label>
									</div>
									<div class="radio">
										<label> <input type="radio" name="gender"
											id="optionsRadios2" value="1"> 여자
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">전화번호</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="phone" id="phone"
										placeholder="전화번호">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">우편번호</label>
                <div class="col-lg-8">
                  <input type="text" class="form-control" name="addrcode"
                    id="addrcode" placeholder="우편번호">
                </div>
                <div class="col-lg-2">
                <button id="postcode" type="button" class="btn btn-primary">중복확인</button>
                </div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">주소</label>

								<div class="col-lg-10">
									<input type="text" class="form-control" name="addr" id="addr"
										placeholder="주소">
								</div>
							</div>
							<div class="form-group">
                <label class="col-lg-2 control-label">상세주소</label>

                <div class="col-lg-10">
                  <input type="text" class="form-control" name="addr" id="addr"
                    placeholder="주소">
                </div>
              </div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button id="insertBtn" type="button" class="btn btn-primary">확인</button>
									<a href="${pageContext.request.contextPath}/index.jsp"
										class="btn btn-large btn-default">취소</a>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

		</div>

		<!-- Footer ========================================================================================== -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-unstyled">
						<li class="pull-right"><a href="#top">위로 이동</a></li>
						<li><a href="#">커뮤니티 홈</a></li>
						<li><a href="#">RSS</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">도움말</a></li>
						<li><a href="#">회원탈퇴</a></li>
					</ul>
					<p>© BitCamp 2018.</p>
				</div>
			</div>
		</footer>
	</div>

   <script type="text/javascript">
  $(document).ready(function() {
    $("#insertBtn").click(function() {
      var id = $("#id").val();
      var nm = $("#nm").val();
      var password = $("#password").val();
      var birth = $("#birth").val();
      var gender;
      if($("#gender").attr("checked", "checked")) {
        gender = 0;
      } else {
        gender = 1;
      } 
      var phone = $("#phone").val();
      var addrcode = $("#addrcode").val();
      var addr = $("#addr").val();

      var parameter = JSON.stringify({
              'id' : id,
              'nm' : nm,
              'password' : password,
              'birth' : birth,
              'gender' : gender,
              'phone' : phone,
              'addrcode' : addrcode,
              'addr' : addr
      });
      
      $.ajax({
        url:'${pageContext.request.contextPath}/member/restinsert',
        data: parameter,
        dataType: 'json',
        contentType: 'application/json;charset=UTF-8',
        type: 'POST',
        success: function() {
        }
      });
    });
    
	  //아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
	  var idck = 0;
    //idck 버튼을 클릭했을 때 
    $("#idcheck").click(function() {
      //userid 를 param.
      var memberid = $("#id").val();

      $.ajax({
        async: true,
        type: 'POST',
        data: memberid,
        url: "${pageContext.request.contextPath}/member/idcheck",
        dataType: "json",
        contentType: "application/json; charset=UTF-8",
        success: function(data) {
          if (data.cnt > 0) {
            alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
            //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
            $("#divInputId").addClass("has-error")
            $("#divInputId").removeClass("has-success")
            $("#userid").focus();

          } else {
            alert("사용가능한 아이디입니다.");
            //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
            $("#divInputId").addClass("has-success")
            $("#divInputId").removeClass("has-error")
            $("#userpwd").focus();
            //아이디가 중복하지 않으면  idck = 1 
            idck = 1;
          }
        },
        error: function(error) {

          alert("error : " + error);
        }
      });
    });
  
  });
  
  
  </script>

</body>
</html>