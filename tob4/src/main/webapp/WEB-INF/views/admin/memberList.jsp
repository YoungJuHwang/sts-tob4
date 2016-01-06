<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>전체 회원 목록 페이지</h1>

<script type="text/javascript">
$(function() {
	AdminMemberList.list('1');
});

var AdminMemberList = {
		 list : function(pageNo) {
			 
				$.getJSON(context+'/admin/member_list/'+pageNo ,function(data) {
					var count = data.count;
					var pageNo = data.pageNo; 
					var startPage = data.startPage;
					var groupSize = data.groupSize;
					var lastPage = data.lastPage;
					var totalPage = data.totalPage;
					var table = "<div id='memberList'><h1 align=center style='color:black;margin-bottom:30px'>회원목록</h1>"
					+"<TABLE id='tab_memberList'>"
					+"<TR ALIGN=CENTER><TD WIDTH=10%><B>번호</B></TD>"
					+"<TD WIDTH=20%><B>아이디</B></TD>"
					+"<TD WIDTH=20%><B>회원명</B></TD>"
					+"<TD WIDTH=30%><B>전화번호</B></TD>"
					+"<TD WIDTH=18%><B>주소</B></TD></TR>";
				   
					$.each(data.list, function(index, value) {
				 table +="<TR><TD WIDTH=10% ALIGN=CENTER>"+(index+1)+"</TD>"
						+"<TD WIDTH=20% ALIGN=CENTER>"+this.userid+"</TD>"
						+"<TD WIDTH=20% ALIGN=CENTER><A HREF='BoardContent.jsp'>"+this.name+"</A></TD>"
						+"<TD WIDTH=30% ALIGN=LEFT>"+this.phone+"</TD>"
						+"<TD WIDTH=18% ALIGN=CENTER>"+this.addr+"</TD></TR>"
					});
					
					table += '</TABLE></div>';
					
					var pagination ='<TABLE id="pagination">'
					+'<TR>'
					+'</TD>'
					+'<TD WIDTH=320 ALIGN=CENTER>';

					if (startPage != 1) {
						pagination += 
						'<a href="#" onclick="AdminMemberList.list(1)">'
						+'<IMG SRC="${img}/admin/btn_bf_block.gif">&nbsp;'
						+'</a>'
						+'<a href="#" onclick="AdminMemberList.list('+(startPage-groupSize)+')">'
						+'<IMG SRC="${img}/admin/btn_bf_page.gif">&nbsp;'
						+'</a>'
					}
					
					for (var i = startPage; i <= lastPage; i++) {
						if (i == pageNo ) {
							pagination +=
								'<font style="color:red;font-size: 20px">'+i+'</font>';
						} else {
							pagination +=
								'<a href="#" onclick="AdminMemberList.list('+i+')">'
								+'<font>'+i+'</font>'
								+'</a>';
						}
					}
					
					if (lastPage != totalPage) {
						pagination +=
						    '<a href="#" onclick="AdminMemberList.list('+(startPage + groupSize)+')">'
		    	            +'<IMG SRC=" ${img}/admin/btn_nxt_page.gif"> &nbsp;'
		           			+'</a>'
		           			+'<a href="#" onclick="AdminMemberList.list('+(totalPage - ((totalPage-1) % groupSize))+')">'
		                	+'<IMG SRC=" ${img}/admin/btn_nxt_block.gif"> &nbsp;'
		           			+'</a>';
					}
					pagination +='</TD>';
					
					
					pagination += '<TD WIDTH=200 ALIGN=RIGHT>'
					+'<FORM NAME="memberSearch" action="'+context+'/admin/memberSearch/1" style="color: black">'
					+'<SELECT NAME="column" SIZE=1>'
					+'<OPTION VALUE="" SELECTED>선택'
					+'</OPTION>'
					+'<OPTION VALUE="id">ID'
					+'</OPTION>'
					+'<OPTION VALUE="name">이름'
					+'</OPTION>'
					+'<OPTION VALUE="gender">성별'
					+'</OPTION>'
					+'</SELECT>'
					+'<INPUT TYPE=TEXT NAME="keyword" SIZE=10 MAXLENGTH=20>'
					+'<INPUT TYPE=submit value="검색">'
					+'</FORM>'
					+'</TD>'
					+'</TR>'
					+'</TABLE>';
					
					table += pagination;
					$('.mainView').html(table);
					
					AdminMemberList.style();
					
				});

		},
		
		style : function(){
			$('#tab_memberList').css('width','70%').css('height','50px')
			.css('margin','auto').css('border','1px solid black')
			.css('CELLSPACING','0').css('CELLPADDING','1px').css('ALIGN','CENTER');
			$('td').add('th').css('text-align','center').css('border','1px solid black').css('background-color','white');
			$('tr').add('th').add('td').css('float','center').css('color','black').css('border','1px solid black');
			

		},
		
		
		 
	memberNotExist : function() {
		var table ='<h1>회원목록</h1><table id="tab_member"><tr><th>아이디</th>';
			table += '<th>이름</th><th>성별</th><th>생년원일</th><th>전화번호</th><th>이메일</th></tr>';
			table += '<tr><td colspan="6"><h2>회원목록이 없습니다.</h2></td></tr></table>';
			$(table).appendTo($('#main_right').empty());
	}
 };
 
</script>


