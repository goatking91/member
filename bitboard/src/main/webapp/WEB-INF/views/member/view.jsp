<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/public.jsp"%>
<script type="text/javascript">
  $(document).ready(function(){
//    $('#update').click(function(){
//      var allData = {'id':$('#id').val(),
//               'nm':$('#name').val(),
//               'birth':$('#birth').val(),
//               'gender':$('#gender').val(),
//               'phone':$('#phone'.val(),
//               'addr':$('#addr').val()}
//      $.ajax(
//          {
//            url : "member/update",  //페이지 주소 수정 _1
//            dataType : "JSON",           //dataType 수정_2
//            async : true ,
//            type : "GET",
//            data : allData ,
//            success : function(data){ 
//            }
//          })
    $('#update').click(function(){
      location.href='${pageContext.request.contextPath}/member/update?id=${info.id }';
    });
    
    $(document).on("click", '#delete', function(){
      if(confirm("정말 삭제?")){
        
        $.ajax({
          url : '${root}/member/rest/${info.id}',
          type : 'DELETE',
          contentType: 'application/json;charset=UTF-8',
          success: function(data){
            location.href = '${root}/member/list'
          },
          error: function(xhr, status, error){
            console.log("status: " + status);
          }
        });
      } 
    })
    
  });
  
</script>
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
							<td id="gender" class="text-left"><c:if
									test="${info.gender eq 0}">남자</c:if> <c:if
									test="${info.gender eq 1}">여자</c:if></td>
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
				<button id="delete" class="btn btn-success btn-default">삭제</button>
				<%-- 
				<a
					href="${pageContext.request.contextPath }/member/delete?id=${info.id}"
					class="btn btn-large btn-default">삭제</a> 
				 --%>
				<a href="./list" class="btn btn-large btn-default">목록</a>
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