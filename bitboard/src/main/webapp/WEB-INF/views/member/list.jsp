<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/public.jsp"%>
<
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

<<<<<<< HEAD
              }
            })
=======
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
                  <li><a href="${root}/${board.control}/list.do?bcode=${board.bcode }&ccode=${board.ccode }&pg=1&key=&word=">${board.bname }</a></li>
                  <c:if test="${i.index < menu.size() - 1 }">
                    <c:if test="${idx !=  menu.get(i.index + 1).ccode}">
                      </ul>
                    </c:if>
                  </c:if>
                </c:forEach>
                </li>
                </ul>
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
>>>>>>> aa9c37de6f6bbf34e0497579d532691e73feacf4

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