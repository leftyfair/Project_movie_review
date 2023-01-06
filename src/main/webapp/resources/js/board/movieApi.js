let apiMovie = {
	
	list : function () {
		$.ajax({
			type : 'get',
			url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
			data : {
				key : '88c59aa27ae6bacdf7780d55660dc441',
				targetDt : '20221210',
				itemPerPage : '10'
			},
			success : function(result) {
				console.log(result);
			},
			error : function() {
				console.log("실패");
			}
		});
	},
}



