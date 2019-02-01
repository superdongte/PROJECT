<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">Board List All</h3>
			</div>
			<div class="box-body">
				 <table class="table">
    <thead>
      <tr>
        <th>프로젝트이름</th>
        <th>시작날짜</th>
        <th>종료날짜</th>
        <th>상태</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="project" items="${list }">
      	<tr>
      		<td><a href="${pageContext.request.contextPath }/pro/read?project_no=${project.project_no }">${project.title }</a></td>
      		<td><fmt:formatDate value="${project.pro_start }" pattern="yyyy-MM-dd" type="date" dateStyle="short"></fmt:formatDate></td>
      		<td><fmt:formatDate value="${project.pro_end }" pattern="yyyy-MM-dd" type="date" dateStyle="short"></fmt:formatDate></td>
      		<td>${project.pro_state }</td>
      	</tr>
      </c:forEach>
    </tbody>
  	</table>
	</div>
		<%-- <div class="box-footer">
			<div class="text-center">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
					<li><a href="${pageContext.request.contextPath }/board/listPage?page=${pageMaker.startPage-1}">&laquo;</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
						<li ${pageMaker.cri.page == idx ? 'class="active"':''  }>
						<a href="${pageContext.request.contextPath }/board/listPage?page=${idx}">${idx}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
					<li><a href="${pageContext.request.contextPath }/board/listPage?page=${pageMaker.endPage+1}">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
		</div> --%>
		</div>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp" %>