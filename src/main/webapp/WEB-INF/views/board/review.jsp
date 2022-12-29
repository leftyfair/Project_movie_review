<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script src="${contextPath}/resources/js/reply/ReplyService.js"></script>
<script src="${contextPath}/resources/js/board/detail.js"></script>

<div class="row">
	<div class="col-4">
		<img src="${contextPath }/resources/image/avatarThum.jpg" alt="">
	</div>
	<div class="col">
		<div class="row">
			<div class="col">설명</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="replyForm">
					<table class="table">
						<tr>
							<td class="col-md-1 text-center align-middle"><b>${auth.id}</b></td>
							<td class="col-md-9">
								<textarea rows="3" class="form-control reply_content" placeholder="댓글을 작성해주세요."></textarea>
							</td>
							<td colspan="2"><button class="btn btn-primary btn-lg reply_write">댓글등록</button></td>
						</tr>
					</table>
				</div>
				<div class="replyList">
					<div class="card">
						<div class="card-header bg-warning text-white">댓글목록</div>
						<div class="card-body"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>

<%@ include file="../layout/footer.jsp"%>