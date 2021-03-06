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
				<h3 class="box-title">REGISTER BOARD</h3>
			</div>			
				<form role="form" method="post" action="update">
				<input type="hidden" name="project_no" value="${project_no.project_no }">
					<div class="box-body">
						<div class="form-group">
							<label>프로젝트이름</label>
							<input type="text" name="title" class="form-control"
								placeholder="Enter Title" value="${project_no.title}">
						</div>
						<div class="form-group">
							<label>프로젝트 내용</label>
							<textarea rows="5" class="form-control"
							name="pro_content" placeholder="Enter Content" >${project_no.pro_content}</textarea>
						</div>
						<div class="form-group">
							<label>시작날짜</label>
							<input type="text" name="pro_start" class="form-control"
								placeholder="Enter Writer" value="<fmt:formatDate value="${project_no.pro_start}" pattern="yyyy-MM-dd"/>" 
							>									
						</div>
						<div class="form-group">
							<label>종료날짜</label>
							<input type="text" name="pro_end" class="form-control"
								placeholder="Enter Writer" value='<fmt:formatDate value="${project_no.pro_end}" pattern="yyyy-MM-dd"/>'>	 
						</div>
						<div class="form-group">
							<label>상태</label>
							<select name="pro_state">
								<option>준비</option>
								<option>보류</option>
								<option>종료</option>
							</select> 
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>			
		</div>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>