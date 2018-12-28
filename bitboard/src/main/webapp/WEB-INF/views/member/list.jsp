<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/public.jsp"%>

<script type="text/javascript">
  $(document).ready(
          function() {
            $.ajax({
              url: "${pageContext.request.contextPath}/member/restlist", //페이지 주소 수정 _1
              dataType: "JSON", //dataType 수정_2
              type: "POST",
              success: function(data) {
                console.log(data);
                var html = "";
                $.each(data, function(index, obj) {
                  $.each(obj, function(index, obj) {
                    html += "<tr><td class='text-center'>" + obj.seq + "</td>";
                    html += "<td>" + obj.id + "</td>";
                    html += "<td><a href='${root}/member/view?id=" + obj.id
                            + "'>" + obj.name + "</a></td>";
                    html += "<td>" + obj.phone + "</td>";
                    html += "<td>" + obj.addrcode + "</td>";
                  })
                })
                $('#member').append(html);

              }
            })
          })

</script>
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
									<input type="text" class="form-control" placeholder="회원명 또는 ID">
									<span class="input-group-btn">
										<button type="submit" class="btn btn-primary">검색</button>
									</span>
								</div>
							</form>
						</div>
					</div>

					<div class="table-responsive">
						<table id="member"
							class="table table-striped table-bordered table-hover">
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
<%-- 								                            <c:forEach var="list" items="${list }" > --%>

<!-- 								                            <tr> -->
<%-- 								                                <td class="text-center">${list.seq}</td> --%>
<%-- 								                                <td>${list.id }</td> --%>
<%-- 								                                <td><a href="${pageContext.request.contextPath}/member/view?id=${list.id }">${list.nm }</a></td> --%>
<%-- 								                                <td>${list. phone }</td> --%>
<%-- 								                                <td>${list.addrcode }</td> --%>
<!-- 								                            </tr> -->
<%-- 								                            </c:forEach> --%>
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


</body>
</html>