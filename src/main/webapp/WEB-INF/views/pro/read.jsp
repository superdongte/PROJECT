<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">Home Page</h3>
			</div>
					<div class="box-body">
						<div class="form-group">
							<label>프로젝트이름</label>
							<input type="text" name="title" class="form-control"
								placeholder="Enter Title" value="${Project_no.title}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label>프로젝트 내용</label>
							<textarea rows="5" class="form-control"
							name="content" placeholder="Enter Content" readonly="readonly">${Project_no.pro_content }</textarea>
						</div>
						<div class="form-group">
							<label>시작날짜</label>
							<input type="text" name="writer" class="form-control"
								placeholder="Enter Writer" value="<fmt:formatDate value="${Project_no.pro_start}" pattern="yyyy-MM-dd"/>" readonly="readonly"> 
						</div>
						<div class="form-group">
							<label>종료날짜</label>
							<input type="text" name="writer" class="form-control"
								placeholder="Enter Writer" value='<fmt:formatDate value="${Project_no.pro_end}" pattern="yyyy-MM-dd"/>' readonly="readonly"> 
						</div>
						<div class="form-group">
							<label>상태</label>
							<input type="text" name="writer" class="form-control"
								placeholder="Enter Writer" value="${Project_no.pro_state}" readonly="readonly"> 
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary" id="btnList">GO LIST</button>
						<button type="submit" class="btn btn-warning" id="btnModify">Modify</button>
						<button type="submit" class="btn btn-danger" id="btnRemove">Remove</button>
					</div>
					<form id="f1" action="" method="post">
						<input type="hidden" name="project_no" value="${Project_no.project_no }">
					</form>
					
					
			</div>
		</div>
	</div>	
</section>
	<script>
		$(function(){
			$("#btnList").click(function(){
				location.href = "${pageContext.request.contextPath}/board/listAll";
			})
			$("#btnRemove").click(function(){
				//#f1(form) attr은 속성값을 바꿀수있음
				var result = confirm("삭제 하시겠습니까?");
				if(result){
				$("#f1").attr("action","delete");
				$("#f1").submit();
				}else{
					return false;
				}
			})
			$("#btnModify").click(function(){
				$("#f1").attr("action","update");
				$("#f1").attr("method","get");
				$("#f1").submit();
			})
			
			
		})
	</script>
<%@ include file="../include/footer.jsp"%>