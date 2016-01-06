var Purchase = {
		main : function(link) {
			$(".mainView").load(link+"/purchase/Purchase");
		},
		list : function(context) {
			var arr = [];
			$.getJSON(context+'/purchase/list', function(data) {
				alert('list의 겟제이슨 들어옴');
				var table = '<h1> 전체주문 목록</h1>'
					+'<table id="pur_list"><tr><th>주문번호</th><th>합계</th><th>어카운트 넘버</th>'
					+'<th>주문한 아이디</th><th>주문한 책 이름</th></tr>';
				$.each(data, function(i, val) {
					table +='<tr><td><a href="#" id="'+this.purNum+'">'+this.purNum+'</a></td>'
					+'<td>'+this.sum+'</td>'
					+'<td>'+this.accountNum+'</td>'
					+'<td>'+this.userid+'</td>'
					+'<td>'+this.bookid+'</td>'
					+'<td><button id="'+this.purNum+'">삭제</button><td></tr>';
					arr.push(this.purNum);
				});
				$(table).appendTo($('#pur_wrap').empty());
				$.each(data, function(i, val) {
					$('#'+arr[i]).click(function() {
						Purchase.remove(arr[i]);
					});
				});
				
			});
		},
		remove : function(purNum) {
			$.getJSON('${context}/purchas/remove'+purNum, function() {
				
			});
		}
};