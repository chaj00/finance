<%@page import="market.dto.MarketIndexDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<% 
		MarketIndexDTO indexList = (MarketIndexDTO)request.getAttribute("indexList");
	
		String m1Title = indexList.getM1Title();
		ArrayList<String> m1Head = indexList.getM1Head();
		ArrayList<String> m1Value = indexList.getM1Value(); 
		ArrayList<String> m1Change = indexList.getM1Change(); 
		ArrayList<String> m1Fluctuation = indexList.getM1Fluctuation();
		ArrayList<String> m1Img = indexList.getM1Img(); 
		
		String m2Title = indexList.getM2Title();
		ArrayList<String> m2Head = indexList.getM2Head();
		ArrayList<String> m2Value = indexList.getM2Value(); 
		ArrayList<String> m2Change = indexList.getM2Change(); 
		ArrayList<String> m2Fluctuation = indexList.getM2Fluctuation();
		ArrayList<String> m2Img = indexList.getM2Img(); 
		
		String m3Title = indexList.getM3Title();
		ArrayList<String> m3Head = indexList.getM3Head();
		ArrayList<String> m3Value = indexList.getM3Value(); 
		ArrayList<String> m3Change = indexList.getM3Change(); 
		ArrayList<String> m3Fluctuation = indexList.getM3Fluctuation();
		ArrayList<String> m3Img = indexList.getM3Img(); 
	%>

 

<style type="text/css">
.market_include{margin-left:20%;   }
/* .market_data{overflow:hidden;width:100%;border-bottom:2px solid #71778a} */

.market_data .title{
		margin:9px 1px 0; 
		background-color:#EBEDF4; 
		font-family:돋움, Dotum, AppleGothic,,sans-serif;;
		font-weight:bold;
		text-align:center;
		font-size:10px;
		
		}

.market_data .data{height:362px} 
.market1{float:left;position:relative;width:325px}
.market2{float:left;position:relative;width:325px}
.market3{float:left;position:relative;width:325px}

.h_lst{
		float:left; 
		height:20px;
		margin:1px -3px 0 0;
		color:#666;
		font-family:arial,helvetica,sans-serif;
		font-size:14px;
		font-weight:bold;
		} 
li{list-style:none;}
/* .market_data .change,.market_data .data_lst li.on .head_info{background:url(http://static.naver.net/nfinance/sp_ico_data.png) no-repeat} */
.head_info{
			float:right; 
			height:20px; 
			margin-top:-3px;
			color:#666;
			font-family:arial,helvetica,sans-serif;
			font-size:14px;
			font-weight:bold
}
.market_data .point_up{color:#e00400}
.market_data .point_dn{color:#005dde}
.market_data .head_info span{display:inline-block;vertical-align:middle}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(function(){
    $(".head_info").hide();
    $(".data_lst").mouseover(function(){
        $(".head_info:visible").slideUp("middle");
        $(this).next('.head_info:hidden').slideDown("middle");
        return false;
    })
});
</script> 

</head>
<body>
	<div id="container">
		<div class="market_include">
			<div class="market_data">
				<div class="market1">
					<div class="title">
						<h2 class="h_market1">
							<span><%=m1Title%></span>
						</h2>
					</div>
					<div class="data">
						<ul class="data_lst" id="exchangeList">
							<%
								for (int i = 0; i < m1Head.size(); i++) {
							%>
							<li class>
								<%
									if (i == 0) {
								%> <a href="#" class="head usd"> <%
								 	} else if (i == 1) {
								 %> <a href="#" class="head jpy"> <%
								 	} else if (i == 2) {
								 %> <a href="#" class="head eur"> <%
								 	} else {
								 %> <a href="#" class="head cny"> <%
								 	}
								 %>
												<h3 class="h_lst">
													<span class="blind"><%=m1Head.get(i)%></span>
												</h3> 
													<%
														if (m1Fluctuation.get(i).equals("상승")) {
													 %>
														<div class="head_info point_up">
													<%
														} else if (m1Fluctuation.get(i).equals("하락")) {
													%>
														<div class="head_info point_dn">
													<%
														} else {
													%>
														<div class="head_info head_info">
													<%
														}
													%>
															<span class="value"><%=m1Value.get(i)%></span> 
															<span class="txt_krw"><span class="blind">원 </span> 
															<span class="change"><%=m1Change.get(i)%></span> 
															<span class="blind"><%=m1Fluctuation.get(i)%></span>

														</div>
														
														</a> 
														<a href="#" class="graph_img">
															 <img src="<%=m1Img.get(i)%>" alt="" width="295" height="153">
														</a>
							</li>
							<%
								}
							%>
						</ul>
					</div>
				</div>

				<div class="market2">
					<div class="title">
						<h2 class="h_market2">
							<span><%=m2Title%></span>
						</h2>
					</div>
					<div class="data">
						<ul class="data_lst" id="worldExchangeList">
							<%
								for (int i = 0; i < m2Head.size(); i++) {
							%>
							<li class>
								<%
									if (i == 0) {
								%> <a href="#" class="head jpy_usd"> <%
								 	} else if (i == 1) {
								 %> <a href="#" class="head usd_eur"> <%
								 	} else if (i == 2) {
								 %> <a href="#" class="head usd_gbp"> <%
								 	} else {
								 %> <a href="#" class="head usd_idx"> <%
								 	}
								 %>
												<h3 class="h_lst">
													<span class="blind"><%=m2Head.get(i)%></span>
												</h3> <%
												 	if (m2Fluctuation.get(i).equals("상승")) {
												 %>
												<div class="head_info point_up">
													<%
														} else if (m2Fluctuation.get(i).equals("하락")) {
													%>
													<div class="head_info point_dn">
														<%
															} else {
														%>
														<div class="head_info head_info">
															<%
																}
															%>

															<span class="value"><%=m2Value.get(i)%></span>
															<%
																if (i == 0) {
															%>
															<span class="txt_jpy"><span class="blind">엔
															</span></span>
															<%
																} else if (i == 1 | i == 2) {
															%>
															<span class="txt_usd"><span class="blind">달러
															</span></span>
															<%
																} else {
																	}
															%>
															<span class="change"><%=m2Change.get(i)%></span> <span
																class="blind"><%=m2Fluctuation.get(i)%></span>
														</div></a> <a href="#" class="graph_img"> <img
												src="<%=m2Img.get(i)%>" alt="" width="295" height="153">
										</a>
							</li>
							<%
								}
							%>
						</ul>
					</div>
				</div>

				<div class="market3">
					<div class="title">
						<h2 class="h_market3">
							<span><%=m3Title%></span>
						</h2>
					</div>
					<div class="data">
						<ul class="data_lst" id="oilGoldList">
							<%
								for (int i = 0; i < m3Head.size(); i++) {
							%>
							<li class>
								<%
									if (i == 0) {
								%> <a href="#" class="head wti"> <%
								 	} else if (i == 1) {
								 %> <a href="#" class="head gasoline"> <%
								 	} else if (i == 2) {
								 %> <a href="#" class="head gold_inter"> <%
								 	} else {
								 %> <a href="#" class="head gold_domestic"> <%
								 	}
								 %>
												<h3 class="h_lst">
													<span class="blind"><%=m3Head.get(i)%></span>
												</h3> <%
													 	if (m3Fluctuation.get(i).equals("상승")) {
													 %>
												<div class="head_info point_up">
													<%
														} else if (m3Fluctuation.get(i).equals("하락")) {
													%>
													<div class="head_info point_dn">
														<%
															} else {
														%>
														<div class="head_info head_info">
															<%
																}
															%>
															<span class="value"><%=m3Value.get(i)%></span>
															<%
																if (i == 0 | i == 2) {
															%>
															<span class="txt_usd"><span class="blind">달러</span></span>
															<%
																} else if (i == 1 | i == 3) {
															%>
															<span class="txt_krw"><span class="blind">원
															</span></span>
															<%
																} else {
																	}
															%>
															<span class="change"><%=m3Change.get(i)%></span> <span
																class="blind"><%=m3Fluctuation.get(i)%></span>
														</div>
														<img src="<%=m3Img.get(i)%>" alt="" width="295"
															height="153">
							</li>
							<% }%>
						</ul>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>