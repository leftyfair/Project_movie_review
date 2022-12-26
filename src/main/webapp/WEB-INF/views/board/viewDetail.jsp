<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div class="container rounded-lg my-5 viewOpacity" style="width: 1200px; margin-bottom: 20px; padding: 10px 30px; background-color: white; box-shadow: 5px 5px 5px 5px;">
        <div class="row my-5">
            <h1>아바타 - 물의 길</h1>
        </div>
        <div class="row">
            <div class="col-3"><img class="img-fluid" src="${contextPath }/resources/image/avatarThum.jpg" alt=""></div>
            <div class="col-6">
                <div>
                    <h3>아바타: 물의 길</h3>
                    <p><b>개봉일</b> : 2022.12.14 개봉</p>
                    <p><b>감독</b> : 제임스 카메론</p>
                    <p><b>출연</b> : 조 샐다나, 샘 워싱턴, 시고니 위버, 스티븐 랭, 케이트 윈슬렛, 클리프 커티스</p>
                </div>
                <div>
                   <p>
	                   <아바타: 물의 길>은 판도라 행성에서 '제이크 설리'와 '네이티리'가 이룬 가족이 겪게 되는 무자비한 위협과 살아남기 위해 떠나야 하는 긴 여정과 전투,
	                   그리고 견뎌내야 할 상처에 대한 이야기를 그렸다. 월드와이드 역대 흥행 순위 1위를 기록한 전편 <아바타>에 이어제임스 카메론 감독이 13년만에 선보이는 영화로,
	                   샘 워싱턴, 조 샐다나, 시고니 위버, 스티븐 랭, 케이트 윈슬렛이 출연하고 존 랜도가 프로듀싱을 맡았다.
                   </p>
                </div>
                <div>
                   <a href="${contextPath}/board/reviewDetail"><button class="btn btn-primary">REVIEW</button></a>
                    <button class="btn btn-danger ml-3">예매하기</button>
                </div>
            </div>
            <div class="col-3"><img class="img-fluid" src="${contextPath }/resources/image/avatarThum.jpg" alt=""></div>
        </div>
        <div class="d-flex justify-content-center my-5">
            <button class="btn btn-secondary">< Prev</button>
            <button class="btn btn-secondary ml-3">Next > </button>
        </div>
    </div>
    
<%@ include file="../layout/footer.jsp" %>