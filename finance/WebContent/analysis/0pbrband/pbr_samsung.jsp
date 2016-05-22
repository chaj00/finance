<%@page import="analysis.dto.EnterpriseDTO"%>
<%@page import="analysis.dto.StockinfoDTO"%>
<%@page import="analysis.dto.BpsepsDTO"%>
<%@page import="analysis.dto.EnterpriseinfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Home | PROJECT</title>

<!-- core CSS -->
<link href="/finance/common/css/bootstrap.min.css" rel="stylesheet">
<link href="/finance/common/css/font-awesome.min.css" rel="stylesheet">
<link href="/finance/common/css/animate.min.css" rel="stylesheet">
<link href="/finance/common/css/prettyPhoto.css" rel="stylesheet">
<link href="/finance/common/css/main.css" rel="stylesheet">
<link href="/finance/common/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="/finance/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/finance/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/finance/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/finance/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/finance/images/ico/apple-touch-icon-57-precomposed.png">

<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css"
	rel="stylesheet" type="text/css">

<style type="text/css">
ol.groove {
/* 	border-style: groove; */
	margin-top: 10px;
}

ol.groove1 {
/* 	border-style: groove; */
	margin-top: inherit;
	margin-left: inherit;
}

div.groove {
	float: left;
}

div.col-md-12 {
/* 	border-style: groove; */
	margin-top: 35px;
}

div.section {
/* 	border-style: groove; */
	margin-top: 35px;
}

div.col-md-8{
	margin-left: inherit;
}
div.PBR_Band{
	margin-top: 35px;
/* 	border-style: groove; */
	
}
table.table{
/* 	border-style: groove; */
	width: 1000px;
	height: 400px;
	white-space:nowrap;
	overflow-x: scroll;
	overflow-y: scroll;
	
}
div.data{
/* 	border-style: groove; */
	width: 1030px;
	height: 300px;
	white-space: nowrap;
	overflow-x: scroll;
	overflow-y: scroll;

}

</style>
<!-- analysis layout -->

<!-- Magnific Popup core CSS file -->
<!-- <link rel="stylesheet" href="magnific-popup/magnific-popup.css">
 -->
<!-- jQuery 1.7.2+ or Zepto.js 1.0+ -->
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->

<!-- Magnific Popup core JS file -->`
<!-- <script src="magnific-popup/jquery.magnific-popup.js"></script> -->
<%
ArrayList<EnterpriseinfoDTO> entinfolist = (ArrayList<EnterpriseinfoDTO>)request.getAttribute("entinfolist");
ArrayList<BpsepsDTO> bpsEpsList = (ArrayList<BpsepsDTO>)request.getAttribute("bpsEps");
ArrayList<StockinfoDTO> stolist = (ArrayList<StockinfoDTO>)request.getAttribute("stoinfo");
ArrayList<EnterpriseDTO> entlist = (ArrayList<EnterpriseDTO>)request.getAttribute("entlist");
int entsize= entlist.size();
int entinfosize= entinfolist.size();
int bpsepssize= bpsEpsList.size();

%>

</head>
<body >
<%-- <%=entsize%>
<%=  entinfosize%>
<%= bpsepssize %> --%>

<!--/.container--> <!--/nav-->
	<div class="row">
		<div class="col-md-2">
			<div class="col-md-12">

				<ul class="list-group">
		
					<!-- <li> **PBR Band & 기업정보** </li> -->
					<!-- <li class="list-group-item"> -->
					<%-- <script type="text/javascript">
					<%
			 		int size= entlist.size();
			 		for (int i = 0; i< size-1;i++){ 
					%>
					</script> --%>
					<%
				 		
				 		
						for (int i = 0; i< entsize;i++){ 
							EnterpriseDTO dto = new EnterpriseDTO();
							dto=entlist.get(i);		
						%>
				 			<li class="list-group-item">
				 			
				 			<a href="/finance/stocklist.do?encode=<%=dto.getEncode() %>"><%=dto.getEname() %></a></li>
				 			<%-- <%=dto.getEncode() %> --%>
						<%}%>
					<!-- <a href="/finance/stocklist.do?page=analysis&pathurl=/analysis/0pbrband/pbr_samsung.jsp">삼성전자</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">아모레퍼시픽</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">포스코</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">네이버</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">한국전력</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">현대차</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">하이닉스</a></li> -->
					

					<!-- <li> **기업정보** </li>
					<li class="list-group-item"><a href="/finance/stocklist.do">삼성전자</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">현대차</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">아모레퍼시픽</a></li> -->
					<!-- <li><a href="./" class="current">시작 페이지로</a></li> -->
				</ul>

				<!-- <ul>
            <li href="/finance/stocklist.do?page=samsung&pathurl1=/analysis/samsung_pbrband.jsp">One</li>
            <li>Two</li>
            <li>Three</li>
          </ul> -->
			</div>
		</div>
		<div class="col-md-8">
			<div class="PBR_Band">
				<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
<%

String b1="01", b2="02", b3="03", b4="04", b5="05", b6="06", b7="07", b8="08", b9="09", b10="10", b11="11", b12="12";
String a1=".1Q", a2=".2Q", a3=".3Q", a4=".4Q";
String c1="15", c2="14", c3="13", c4="12", c5="11", c6="10", c7="9", c8="8", c9="7", c10="6", c11="5";

%>
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
        ['date', '종가', 'bps0.8', 'bps1.2', 'bps1.6', 'bps2.0'],
        <%
       
 		for (int i = 0; i< bpsepssize;i++){ 
		 %>

[ "<%=entinfolist.get(i).getYear()+b4%>" , <%= stolist.get(i).getAprPrice() %>, 
									<%=(double)bpsEpsList.get(i).getFiBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps()/bpsEpsList.get(i).getFiBps()),(1/12.0))-1))%>,
								    <%=(double)bpsEpsList.get(i).getFiBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps2()/bpsEpsList.get(i).getFiBps2()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getFiBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps3()/bpsEpsList.get(i).getFiBps3()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getFiBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps4()/bpsEpsList.get(i).getFiBps4()),(1/12.0))-1))%>],
[ "<%=entinfolist.get(i).getYear()+b5%>" , <%= stolist.get(i).getMayPrice() %>, 
									<%=(double)bpsEpsList.get(i).getFiBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps()/bpsEpsList.get(i).getFiBps()),(1/12.0))-1))%>,
								    <%=(double)bpsEpsList.get(i).getFiBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps2()/bpsEpsList.get(i).getFiBps2()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getFiBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps3()/bpsEpsList.get(i).getFiBps3()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getFiBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps4()/bpsEpsList.get(i).getFiBps4()),(1/12.0))-1))%>],
[ "<%=entinfolist.get(i).getYear()+b6%>" , <%= stolist.get(i).getJunPrice() %>, 
									<%=(double)bpsEpsList.get(i).getFiBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps()/bpsEpsList.get(i).getFiBps()),(1/12.0))-1))%>,
								    <%=(double)bpsEpsList.get(i).getFiBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps2()/bpsEpsList.get(i).getFiBps2()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getFiBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps3()/bpsEpsList.get(i).getFiBps3()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getFiBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getSeBps4()/bpsEpsList.get(i).getFiBps4()),(1/12.0))-1))%>],
									
[ "<%=entinfolist.get(i).getYear()+b7%>" , <%= stolist.get(i).getJulyPrice() %>, 
									<%=(double)bpsEpsList.get(i).getSeBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps()/bpsEpsList.get(i).getSeBps()),(1/12.0))-1))%>,
								    <%=(double)bpsEpsList.get(i).getSeBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps2()/bpsEpsList.get(i).getSeBps2()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getSeBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps3()/bpsEpsList.get(i).getSeBps3()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getSeBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps4()/bpsEpsList.get(i).getSeBps4()),(1/12.0))-1))%>],
[ "<%=entinfolist.get(i).getYear()+b8%>" , <%= stolist.get(i).getAugPrice() %>, 
									<%=(double)bpsEpsList.get(i).getSeBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps()/bpsEpsList.get(i).getSeBps()),(1/12.0))-1))%>,
								    <%=(double)bpsEpsList.get(i).getSeBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps2()/bpsEpsList.get(i).getSeBps2()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getSeBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps3()/bpsEpsList.get(i).getSeBps3()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getSeBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps4()/bpsEpsList.get(i).getSeBps4()),(1/12.0))-1))%>],
[ "<%=entinfolist.get(i).getYear()+b9%>" , <%= stolist.get(i).getSepPrice() %>, 
									<%=(double)bpsEpsList.get(i).getSeBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps()/bpsEpsList.get(i).getSeBps()),(1/12.0))-1))%>,
								    <%=(double)bpsEpsList.get(i).getSeBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps2()/bpsEpsList.get(i).getSeBps2()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getSeBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps3()/bpsEpsList.get(i).getSeBps3()),(1/12.0))-1))%>,
									<%=(double)bpsEpsList.get(i).getSeBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getThBps4()/bpsEpsList.get(i).getSeBps4()),(1/12.0))-1))%>],											

[ "<%=entinfolist.get(i).getYear()+b10%>" , <%= stolist.get(i).getOctPrice() %>, 
									  <%=(double)bpsEpsList.get(i).getThBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps()/bpsEpsList.get(i).getThBps()),(1/12.0))-1))%>,
							 	      <%=(double)bpsEpsList.get(i).getThBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps2()/bpsEpsList.get(i).getThBps2()),(1/12.0))-1))%>,
							 		  <%=(double)bpsEpsList.get(i).getThBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps3()/bpsEpsList.get(i).getThBps3()),(1/12.0))-1))%>,
									  <%=(double)bpsEpsList.get(i).getThBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps4()/bpsEpsList.get(i).getThBps4()),(1/12.0))-1))%>],
[ "<%=entinfolist.get(i).getYear()+b11%>" , <%= stolist.get(i).getNovPrice() %>, 
  									  <%=(double)bpsEpsList.get(i).getThBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps()/bpsEpsList.get(i).getThBps()),(1/12.0))-1))%>,
								      <%=(double)bpsEpsList.get(i).getThBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps2()/bpsEpsList.get(i).getThBps2()),(1/12.0))-1))%>,
									  <%=(double)bpsEpsList.get(i).getThBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps3()/bpsEpsList.get(i).getThBps3()),(1/12.0))-1))%>,
									  <%=(double)bpsEpsList.get(i).getThBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps4()/bpsEpsList.get(i).getThBps4()),(1/12.0))-1))%>],
[ "<%=entinfolist.get(i).getYear()+b12%>" , <%= stolist.get(i).getDecPrice() %>, 
  									  <%=(double)bpsEpsList.get(i).getThBps()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps()/bpsEpsList.get(i).getThBps()),(1/12.0))-1))%>,
								      <%=(double)bpsEpsList.get(i).getThBps2()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps2()/bpsEpsList.get(i).getThBps2()),(1/12.0))-1))%>,
									  <%=(double)bpsEpsList.get(i).getThBps3()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps3()/bpsEpsList.get(i).getThBps3()),(1/12.0))-1))%>,
									  <%=(double)bpsEpsList.get(i).getThBps4()*(double)(1+(Math.pow((bpsEpsList.get(i).getFoBps4()/bpsEpsList.get(i).getThBps4()),(1/12.0))-1))%>],
<%if( i != (bpsepssize-1)  ){%>								  
[ "<%=entinfolist.get(i+1).getYear()+b1%>" , <%= stolist.get(i).getJanPrice() %>, 
 									 <%=(double)bpsEpsList.get(i).getFoBps()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps()/bpsEpsList.get(i).getFoBps()),(1/12.0))-1)) %>,
									 <%=(double)bpsEpsList.get(i).getFoBps2()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps2()/bpsEpsList.get(i).getFoBps2()),(1/12.0))-1))%>,
								 	 <%=(double)bpsEpsList.get(i).getFoBps3()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps3()/bpsEpsList.get(i).getFoBps3()),(1/12.0))-1))%>,
								 	 <%=(double)bpsEpsList.get(i).getFoBps4()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps4()/bpsEpsList.get(i).getFoBps4()),(1/12.0))-1))%>],	
[ "<%=entinfolist.get(i+1).getYear()+b2%>" , <%= stolist.get(i).getFebPrice() %>, 
 									 <%=(double)bpsEpsList.get(i).getFoBps()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps()/bpsEpsList.get(i).getFoBps()),(1/12.0))-1))%>,
									 <%=(double)bpsEpsList.get(i).getFoBps2()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps2()/bpsEpsList.get(i).getFoBps2()),(1/12.0))-1))%>,
								 	 <%=(double)bpsEpsList.get(i).getFoBps3()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps3()/bpsEpsList.get(i).getFoBps3()),(1/12.0))-1))%>,
								 	 <%=(double)bpsEpsList.get(i).getFoBps4()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps4()/bpsEpsList.get(i).getFoBps4()),(1/12.0))-1))%>],										 	 
[ "<%=entinfolist.get(i+1).getYear()+b3%>" , <%= stolist.get(i).getMarPrice() %>, 
 									 <%=(double)bpsEpsList.get(i).getFoBps()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps()/bpsEpsList.get(i).getFoBps()),(1/12.0))-1))%>,
									 <%=(double)bpsEpsList.get(i).getFoBps2()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps2()/bpsEpsList.get(i).getFoBps2()),(1/12.0))-1))%>,
								 	 <%=(double)bpsEpsList.get(i).getFoBps3()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps3()/bpsEpsList.get(i).getFoBps3()),(1/12.0))-1))%>,
								 	 <%=(double)bpsEpsList.get(i).getFoBps4()*(double)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps4()/bpsEpsList.get(i).getFoBps4()),(1/12.0))-1))%>],
							<%}%>									  
									 <%}%>
        
        
        ]);
        var options = {
          /* title: 'PBR Band', */
          hAxis: {showTextEvery: 13},
          vAxes: {0: {viewWindowMode:'explicit',
                      viewWindow:{
                                  max:<%=bpsEpsList.get(bpsepssize-1).getFoBps4()%>,
                                  min:<%=bpsEpsList.get(0).getFiBps()*0.8%>
                                  },
                      gridlines: {color: 'transparent'},
                      },
                   1: {gridlines: {color: 'transparent'},
                      format:"#%"}, 
                  },
          series: {0: {targetAxisIndex:0},
        		1:{targetAxisIndex:0},
          		2:{targetAxisIndex:0},
          		3:{targetAxisIndex:0},
          		4:{targetAxisIndex:0},
         	 	5:{targetAxisIndex:0},
          		6:{targetAxisIndex:0},
                  },
          colors: ["red", "green", "orange", "blue", "purple", "yellow"],
          chartArea:{left:80,top:30, width:700, height:300},
        };
		
        var chart = new google.visualization.LineChart(document.getElementById('chart_id'));
        chart.draw(data, options);
      }
     
</script>
<!-- <div class="ZOOM" href="/finance/analysis/image/pbr_samsung.jsp">확대보기</div> -->

PBR Band

		<%-- <%
		for (int i = 0; i< entsize;i++){ 
			EnterpriseDTO dto = new EnterpriseDTO();
			dto=entlist.get(i);		
		%>
				<a href="/finance/stocklist.do?encode=<%=dto.getEncode() %>"><%=dto.getEname() %></a></li>
		<%}%> --%>

<div id="chart_id" style="width: 1500px; height: 400px;">
</div>

<script type="text/javascript">

document.write("기업정보 (단위 : 원)");
var entData = "<div class='data'>";
	entData += "<table class='table'>";
	entData += "<thead>";
	entData += "<tr>";
		
        <% 
        for (int i = 0; i< entinfosize;i++){ %>
		entData += "<th>구분</th>";
		entData += "<th><%= entinfolist.get(entinfosize-1-i).getYear()+a1%></th>";
		entData += "<th><%= entinfolist.get(entinfosize-1-i).getYear()+a2%></th>";
		entData += "<th><%= entinfolist.get(entinfosize-1-i).getYear()+a3%></th>";
		entData += "<th><%= entinfolist.get(entinfosize-1-i).getYear()+a4%></th>";
	entData += "</tr>";
entData += "</thead>";
entData += "<tbody>";
 		    entData += "<tr>";
 		   	entData += "<td>" + "자산" + "</td>";
 		    entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFiasset()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getSeasset()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getThasset()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFoasset()%> + "</td>";
		   	entData += "</tr>";
 		    
		   	entData += "<tr>";
		   	entData += "<td>" + "부채" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFidept()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getSedept()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getThdept()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFodept()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "매출액" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFiqsales()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getSeqsales()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getThqsales()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFoqsales()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "영업이익" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFiprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getSeprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getThprofit()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFoprofit()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "당기순이익" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFinetprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getSenetprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getThnetprofit()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFonetprofit()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "주식총수" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFicapitalstock()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getSecapitalstock()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getThcapitalstock()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(entinfosize-1-i).getFocapitalstock()%> + "</td>";
		   	entData += "</tr>";
		 
	    entData += "</tr>";
	    entData += "</tbody>";
	    <%}%>
	    entData += "</table>";
	    entData += "</div>";
	    
	    
document.write(entData);
</script>
			</div>
		</div> 
		
	</div>

</body>
</html>