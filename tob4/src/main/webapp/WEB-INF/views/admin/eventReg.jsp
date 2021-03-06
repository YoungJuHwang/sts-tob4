<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		AdminEvent.reg(context+'/admin/event_reg');
	});

var AdminEvent = {
	reg : function(url) {
		$.getJSON(url, 
			function(data) {
			
		var table = '<div class="container"><div class="row">'
		+'<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">'
		+'<form role="form"><h2 style="margin-left: 220px;">이벤트 등록</h2>'
		+'<hr class="colorgraph"><div class="row"><div class="col-xs-12 col-sm-6 col-md-6"><div class="form-group">'			
		+'<input type="text" name="evtId" id="evtId" class="form-control input-lg" placeholder="이벤트 아이디" tabindex="1" style="width: 450px;">'			
		+'</div></div>'			
		+'<div class="row"><div class="col-xs-12 col-md-6">'			
		+'<a href="#" class="btn btn-success btn-block btn-lg" style="width: 100px; float: right; margin-right: 15px;">중복확인</a>'			
		+'</div></div></div>'			
		+'<div class="form-group"><input type="text" name="evtName" id="evtName" class="form-control input-lg" placeholder="이벤트 이름" tabindex="3"></div>'			
		+'<div class="form-group"><input type="text" name="fromDt" id="fromDt" class="form-control input-lg" placeholder="시작 날짜" tabindex="4"></div>'			
		+'<div class="form-group"><input type="text" name="toDt" id="toDt" class="form-control input-lg" placeholder="종료 날짜" tabindex="5"></div>'			
		+'<div class="row"><div class="col-xs-4 col-sm-3 col-md-3"><span class="button-checkbox">'			
		+'<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>'			
		+'<input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1"></span></div>'			
		+'<div class="col-xs-8 col-sm-9 col-md-9">'			
		+'<strong class="label label-primary">이벤트 등록</strong>을 하기전에 '			
		+'<a href="#" data-toggle="modal" data-target="#t_and_c_m">규정사항</a>을 확인하십시오. </div></div>'			
		+'<hr class="colorgraph">'			
		+'<div class="row"><div class="col-xs-12 col-md-6">'			
		+'<input type="submit" value="이벤트 등록" class="btn btn-primary btn-block btn-lg" tabindex="2" style="margin-left: 180px; width: 200px;">'			
		+'</div></div></form></div></div>'			
		+'<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">'			
		+'<div class="modal-dialog modal-lg"><div class="modal-content"><div class="modal-header">'			
		+'<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>'			
		+'<h4 class="modal-title" id="myModalLabel">규정사항</h4></div>'			
		+'<div class="modal-body"><p>규정사항 솰라솰라솰라</p></div><div class="modal-footer">'			
		+'<button type="button" class="btn btn-primary" data-dismiss="modal">동의</button>'
		+'</div></div></div></div></div>'
		
		$('.mainView').html(table);
		AdminEvent.style();
		$('.button-checkbox').each(function () {

	        // Settings
	        var $widget = $(this),
	            $button = $widget.find('button'),
	            $checkbox = $widget.find('input:checkbox'),
	            color = $button.data('color'),
	            settings = {
	                on: {
	                    icon: 'glyphicon glyphicon-check'
	                },
	                off: {
	                    icon: 'glyphicon glyphicon-unchecked'
	                }
	            };

	        // Event Handlers
	        $button.on('click', function () {
	            $checkbox.prop('checked', !$checkbox.is(':checked'));
	            $checkbox.triggerHandler('change');
	            updateDisplay();
	        });
	        $checkbox.on('change', function () {
	            updateDisplay();
	        });

	        // Actions
	        function updateDisplay() {
	            var isChecked = $checkbox.is(':checked');

	            // Set the button's state
	            $button.data('state', (isChecked) ? "on" : "off");

	            // Set the button's icon
	            $button.find('.state-icon')
	                .removeClass()
	                .addClass('state-icon ' + settings[$button.data('state')].icon);

	            // Update the button's color
	            if (isChecked) {
	                $button
	                    .removeClass('btn-default')
	                    .addClass('btn-' + color + ' active');
	            }
	            else {
	                $button
	                    .removeClass('btn-' + color + ' active')
	                    .addClass('btn-default');
	            }
	        }

	        // Initialization
	        function init() {

	            updateDisplay();

	            // Inject the icon if applicable
	            if ($button.find('.state-icon').length == 0) {
	                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i>');
	            }
	        }
	        init();
	    });
	});		
},
	
	
 	style : function() {
		$('.colorgraph').css('height','5px').css('border-top','0')
		.css('background','#c4e17f').css('border-radius','5px')
		.css('background-image','-webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')
		.css('background-image','-moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')
		.css('background-image','-o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')
		.css('background-image','linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4)')	
	}
	
};


/* ==================================================== */	

$("#reg_event_btn").click(function() {
	if($("#evtId").val() == "") {
		alert("이벤트 아이디를 입력하세요s.");
		$("#evtId").focus();
		return false;
	}
	if($("#evtName").val() == "") {
		alert("이벤트 이름을 입력하세요.");
		$("#evtName").focus();
		return false;
	}
	if($("#fromDt").val() == "") {
		alert("시작 날짜를 입력하세요.");
		$("#fromDt").focus();
		return false;
	}
	if($("#toDt").val() == "") {
		alert("종료날짜를 입력하세요.");
		$("toDt").focus();
		return false;
	}

	
	$.ajax({
		type:"post",
		data:$("#regEventForm").serialize(),
		dataType:"json",
		url:"${context}/admin/event_reg",
		success: function(data) {
			if(data.result == "success") { 
				alert(data.evtName+"이벤트 등록이 완료 되었습니다.");
				
			} else if(data.result == "chk") { 
				alert("이미 가입된 이벤트ID 입니다.");
				return false;
			} else { 
				alert("이벤트 등록 중 오류가 발생했습니다.");
				return false;
			}
		},
		error: function(e) {
			alert(e);
		}
	});
	
});	


$("#dup_event_Btn").click(function() {
	if($("#evtId").val() == "") {
		alert("이벤트 아이디를 입력하세요.");
		$("#evtId").focus();
		return false;
	}	
	
	$.ajax({
		type:"post",
		data:{evtId:$("#evtId").val()},
		dataType:"json",
		url:"${context}/admin/event_reg_chk",
		success: function(data) {
			if(data.result == "fail") { 
				alert("이미 등록된 이벤트 아이디입니다.");
				return false;
			} else {
				alert("등록 가능한 책입니다.");
				$("#evtName").focus();
			}
		},
		error: function(e) {
			alert(e);
		}
	});
	
	
});

		
		
		
		

		

	

</script>



