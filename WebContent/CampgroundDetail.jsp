<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CampgroundDetail.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/CampgroundDetail.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript">

	$.datepicker.setDefaults(
	{
		dateFormat : 'yy-mm-dd'
		, prevText : '이전 달'
		,nextText : '다음 달'
		,monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월'
					 , '7월', '8월', '9월','10월', '11월', '12월']
		,monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월'
						  , '7월', '8월','9월', '10월', '11월', '12월']
		,dayNames : [ '일', '월', '화', '수', '목', '금', '토' ]
		,dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ]
		,dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ]
		,showMonthAfterYear : true
		,yearSuffix : '년'
	});

	$(function()
	{
		$("#datepicker1, #datepicker2").datepicker();
	});
	
	
	
	$(document).ready(function() {
		$(".tab_title li").click(function() {
			var idx = $(this).index();
			$(".tab_title li").removeClass("on");
			$(".tab_title li").eq(idx).addClass("on");
			$(".tab_cont > div").hide();
			$(".tab_cont > div").eq(idx).show();
		})
	});
	
	
	function fnMove()
	{
		var offset = $("#main").offset();
		$('html, body').animate({scrollTop : offset.top}, 400);
	}

	
	
	
/* 
	$(document).ready(function(){

	    $(".").load("");

	});
 */
	

</script>

</head>
<body>


<div class="container-cgd">
	<form action="">
		<div class="item-cgd">
			<div class="top">
				<span style="font-size: 30px;">해오름캠핑장</span>
				<button type="button" class="btn1">공유하기</button>
				<button type="button" class="btn1">픽하기</button>
			</div>
		</div>
		
		<div class="item-cgd">
			<div class="image-cgd">
				<div class="image-box">
					<img class="image-thumbnail" src="<%=cp %>/img/campground1.jpg">
					<img class="image-thumbnail" src="<%=cp %>/img/campground2.jpg">
					<img class="image-thumbnail" src="<%=cp %>/img/campground3.jpg">
					<img class="image-thumbnail" src="<%=cp %>/img/campground4.jpg">
					<img class="image-thumbnail" src="<%=cp %>/img/campground5.jpg">
				</div>
			</div>
		</div>

		<div class="item-cgd">
			<table class="item-table">
				<tr>
					<td class="border1">
						<ul class="info">
							<li class="info">충남 논산시 벌곡면 수락로237번길 26-98 (덕곡리)</li>
							<li class="info">010-0000-0000</li>
							<li class="info">일반캠핑, 글램핑</li>
							<li class="info">매점, 수세식화장실, 반려동물 동반</li>
							<li class="info">수영장, 짚라인, 등산</li>
						</ul>
					</td>
					<td class="border0">
						<button type="button" onclick="fnMove()" class="btn0">예약</button>
					</td>
				</tr>
				
				<tr>
					<td class="border1">
						<ul class="info">
							<li class="info">픽 120</li>
							<li class="info">리뷰 47</li>
							<li class="info">별점 4.3 / 5.0</li>
						</ul>
					</td>
					<td class="border0">
						<button type="button" onclick="" class="btn0">설문리뷰 등록</button>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="item-cgd">
			리뷰결과 통계 자리
		</div>
		
		<div class="item-cgd">
			<div id="review">
				<div class="sort">
					<select name="fruit">
						<option value="dateup" selected="selected">리뷰작성일↑</option>
						<option value="datedown">리뷰작성일↓</option>
						<option value="gradeup">평점↓</option>
						<option value="gradedown">평점↑</option>
					</select>
				</div>
			
				<div>
					<div>
						<span id="visitDate">방문일 2021.11.13</span><br>
						<span id="firewood">★★★★★</span>
						<span class="writeDate">작성일 2021.11.14</span>
						<textarea class="reviewContent" readonly="readonly">좋네요</textarea>
					</div>
					
					<div class="writed">
						<span class="writeDate">작성일 2021.11.15</span>
						<textarea class="replyContent" readonly="readonly">감사합니다</textarea>
					</div>
					
					<div>
						<span id="visitDate">방문일 2021.11.13</span><br>
						<span id="firewood">★★★★★</span>
						<span class="writeDate">작성일 2021.11.14</span>
						<textarea class="reviewContent" readonly="readonly">좋네요</textarea>
					</div>
					
					<div class="writed">
						<span class="writeDate">작성일 2021.11.15</span>
						<textarea class="replyContent" readonly="readonly">감사합니다</textarea>
					</div>
				</div>
				
				<div style="text-align: center;">
					<span>1234next10</span>
				</div>
			</div>
		</div>
		
		<div class="item-cgd">
  			<input type="text" id="datepicker1" class="textbox"> ~ <input type="text" id="datepicker2" class="textbox">
  			<span class="errMsg">날짜를 선택하세요.</span>
		</div>
		
		
		<div class="item-cgd" id="main">
		 
		    <input class="tab" id="tab1" type="radio" name="tabs" checked> 
		    <label for="tab1">전체</label>
		 
		    <input class="tab" id="tab2" type="radio" name="tabs">
		    <label for="tab2">오토</label>
		    
		    <input class="tab" id="tab3" type="radio" name="tabs">
		    <label for="tab3">차박</label>
		    
		    <input class="tab" id="tab4" type="radio" name="tabs">
		    <label for="tab4">글램핑</label>
		
		    <section id="content1" style="margin-bottom:20px; height: 100%;">
		        <div class="roominfo">
					<%-- <jsp:include page="RoomList.jsp"></jsp:include> --%>
		        </div>
		    </section>
		 
		    <section id="content2" style="margin-bottom:20px;">
				오토
		    </section>
		    
		    <section id="content3" style="margin-bottom:20px;">
		    	차박
		    </section>
		
		    <section id="content4" style="margin-bottom:20px;">
				글램핑
		    </section>
		
		</div>

	</form>
</div>



</body>
</html>