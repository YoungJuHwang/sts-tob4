<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Hanbit - words</title>

<!-- Header -->
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="navbar navbar-inverse" id="bs-example-navbar-collapse" >
<div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll"  href="#">
                    <i class="fa fa-play-circle"></i>  <span class="light"><b>TOB</b></span>||Hanbit
                </a>
            </div>
            </div>
	<div class="nav navbar-nav" style="width: 100%">
	<ul class="nav navbar-nav"	style="padding-bottom: 5px; margin: 0 auto; width: 100%">
		<li style="padding-right: 100px;"><a
			href="${context}/main/Home"><b>HOME</b></a></li>
		<li style="padding-right: 100px;"><a href="${context}/global/intro"><b>INFO</b></a></li>
		<li style="padding-right: 100px;"><a
			href="${context}/book/Book"><b>BOOK</b></a></li>    
		<li style="padding-right: 100px;">
		<a href="${context}/event/Event"><b>EVENT</b></a></li>
		<li style="padding-right: 100px;"><a href="${context}/purchase/Purchase"><b>Purchase</b></a></li>
		<li style="padding-right: 100px;"><button id="btn_pur"> 구매하기 </button></li>
		<c:if test="${empty sessionScope.user}">
	   	<!-- 로그인 안한 상태 -->
		
		<li style="float: right"><a href="${context}/admin/main"><span class="glyphicon glyphicon-user"></span>관리자</a></li>
		<li style="float: right"><a href="${context}/member/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li style="float: right"><a href="${context}/member/Join">Join</a></li>
		</c:if>
		<c:if test="${not empty sessionScope.user}">
		<li style="float: right;">${user.name}님 반갑습니다.</li>
		<li style="float: right;"><a href="${context}/member/mypage">마이페이지</a></li>
		<li style="float: right;"><input id="btn_logout" type="submit" name="submit" value="로그아웃" /></li>
		</c:if>
	</ul>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$('#btn_pur').click(function() {
			alert('구매버튼 클릭');
			Purchase.main(context);
		});
		$('#btn_logout').click(function() {
			alert('로그아웃');
			Member.logout(context);
		});
	});
</script>
