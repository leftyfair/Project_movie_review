let apiMovie = {
	
	list : function () {
		$.ajax({
			type : 'get',
			url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=88c59aa27ae6bacdf7780d55660dc441&targetDt=20221220',
			success : function(data) {
				console.log(data);
			},
			error : function() {
				console.log("실패");
			}
		});
	},
}



