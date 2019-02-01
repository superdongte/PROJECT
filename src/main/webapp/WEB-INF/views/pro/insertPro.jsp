<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<section class="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">REGISTER BOARD</h3>
			</div>			
				<form role="form" method="post" action="insertPro">
					<div class="box-body">
						<div class="form-group">
							<label>프로젝트이름</label>
							<input type="text" name="title" class="form-control"
								placeholder="제목을 입력하세요">
						</div>
						<div class="form-group">
							<label>프로젝트 내용</label>
							<textarea rows="5" class="form-control"
							name="pro_content" placeholder="내용을 입력하세요"></textarea>
						</div>
						<div class="form-group">
							<label>시작날짜</label>
							<input type="text" name="pro_start" class="form-control"
								placeholder="ex yyyy-MM-dd"> 
						</div>
						<div class="form-group">
							<label>종료날짜</label>
							<input type="text" name="pro_end" class="form-control"
								placeholder="ex yyyy-MM-dd"> 
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
