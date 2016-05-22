<%@page import="analysis.dto.EnterpriseinfoDTO"%>
<%@page import="analysis.dto.StockinfoDTO"%>
<%@page import="analysis.dto.BpsepsDTO"%>

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
	border-style: groove;
	margin-top: 10px;
}

ol.groove1 {
	border-style: groove;
	margin-top: inherit;
	margin-left: inherit;
}

div.groove {
	float: left;
}

div.col-md-12 {
	border-style: groove;
	margin-top: 35px;
}

div.section {
	border-style: groove;
	margin-top: 35px;
}

div.col-md-8{
	margin-left: inherit;
}
div.PBR_Band{
	margin-top: 35px;
	border-style: groove;
	
}
table.table{
	border-style: groove;
	width: 1000px;
	height: 400px;
	white-space:nowrap;
	overflow-x: scroll;
	overflow-y: scroll;
	
}
div.data{
	border-style: groove;
	width: 1030px;
	height: 300px;
	white-space: nowrap;
	overflow-x: scroll;
	overflow-y: scroll;

}

</style>
<!-- analysis layout -->

<!-- Magnific Popup core CSS file -->
<link rel="stylesheet" href="magnific-popup/magnific-popup.css">

<!-- jQuery 1.7.2+ or Zepto.js 1.0+ -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<!-- Magnific Popup core JS file -->`
<script src="magnific-popup/jquery.magnific-popup.js"></script>

</head>
<body >
<!--/.container--> <!--/nav-->
	<div class="row">
		<div class="col-md-2">
			<div class="col-md-12">

				<ul class="list-group">

					<li> **PBR Band & 기업정보** </li>
					<li class="list-group-item">
					<a href="/finance/stocklist.do?page=analysis&pathurl=/analysis/0pbrband/pbr_samsung.jsp">삼성전자</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">아모레퍼시픽</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">포스코</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">네이버</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">한국전력</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">현대차</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">하이닉스</a></li>
					

					<!-- <li> **기업정보** </li>
					<li class="list-group-item"><a href="/finance/stocklist.do">삼성전자</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">현대차</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">아모레퍼시픽</a></li> -->
					<li><a href="./" class="current">시작 페이지로</a></li>
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
ArrayList<EnterpriseinfoDTO> entinfolist = (ArrayList<EnterpriseinfoDTO>)request.getAttribute("entinfolist");
ArrayList<BpsepsDTO> bpsEpsList = (ArrayList<BpsepsDTO>)request.getAttribute("bpsEps");
ArrayList<StockinfoDTO> stolist = (ArrayList<StockinfoDTO>)request.getAttribute("stoinfo");

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
 		int size= bpsEpsList.size();
 		for (int i = 0; i< size-1;i++){ 
		 %>
 [ "<%=(i+5)+b1%>" , <%= stolist.get(i).getJanPrice() %>, 
 									 <%=(int)bpsEpsList.get(i).getFiBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps()/bpsEpsList.get(i).getFiBps()),(1/12.0))-1)) %>,
									 <%=(int)bpsEpsList.get(i).getFiBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps2()/bpsEpsList.get(i).getFiBps2()),(1/12.0))-1))%>,
								 	 <%=(int)bpsEpsList.get(i).getFiBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps3()/bpsEpsList.get(i).getFiBps3()),(1/12.0))-1))%>,
								 	 <%=(int)bpsEpsList.get(i).getFiBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps4()/bpsEpsList.get(i).getFiBps4()),(1/12.0))-1))%>],	
 [ "<%=(i+5)+b2%>" , <%= stolist.get(i).getFebPrice() %>, 
 									 <%=(int)bpsEpsList.get(i).getFiBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps()/bpsEpsList.get(i).getFiBps()),(1/12.0))-1))%>,
									 <%=(int)bpsEpsList.get(i).getFiBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps2()/bpsEpsList.get(i).getFiBps2()),(1/12.0))-1))%>,
								 	 <%=(int)bpsEpsList.get(i).getFiBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps3()/bpsEpsList.get(i).getFiBps3()),(1/12.0))-1))%>,
								 	 <%=(int)bpsEpsList.get(i).getFiBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps4()/bpsEpsList.get(i).getFiBps4()),(1/12.0))-1))%>],										 	 
 [ "<%=(i+5)+b3%>" , <%= stolist.get(i).getMarPrice() %>, 
 									 <%=(int)bpsEpsList.get(i).getFiBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps()/bpsEpsList.get(i).getFiBps()),(1/12.0))-1))%>,
									 <%=(int)bpsEpsList.get(i).getFiBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps2()/bpsEpsList.get(i).getFiBps2()),(1/12.0))-1))%>,
								 	 <%=(int)bpsEpsList.get(i).getFiBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps3()/bpsEpsList.get(i).getFiBps3()),(1/12.0))-1))%>,
								 	 <%=(int)bpsEpsList.get(i).getFiBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFiBps4()/bpsEpsList.get(i).getFiBps4()),(1/12.0))-1))%>],

[ "<%=(i+5)+b4%>" , <%= stolist.get(i).getAprPrice() %>, 
									<%=(int)bpsEpsList.get(i).getSeBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps()/bpsEpsList.get(i).getSeBps()),(1/12.0))-1))%>,
								    <%=(int)bpsEpsList.get(i).getSeBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps2()/bpsEpsList.get(i).getSeBps2()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getSeBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps3()/bpsEpsList.get(i).getSeBps3()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getSeBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps4()/bpsEpsList.get(i).getSeBps4()),(1/12.0))-1))%>],
[ "<%=(i+5)+b5%>" , <%= stolist.get(i).getMayPrice() %>, 
									<%=(int)bpsEpsList.get(i).getSeBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps()/bpsEpsList.get(i).getSeBps()),(1/12.0))-1))%>,
								    <%=(int)bpsEpsList.get(i).getSeBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps2()/bpsEpsList.get(i).getSeBps2()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getSeBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps3()/bpsEpsList.get(i).getSeBps3()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getSeBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps4()/bpsEpsList.get(i).getSeBps4()),(1/12.0))-1))%>],
[ "<%=(i+5)+b6%>" , <%= stolist.get(i).getJunPrice() %>, 
									<%=(int)bpsEpsList.get(i).getSeBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps()/bpsEpsList.get(i).getSeBps()),(1/12.0))-1))%>,
								    <%=(int)bpsEpsList.get(i).getSeBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps2()/bpsEpsList.get(i).getSeBps2()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getSeBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps3()/bpsEpsList.get(i).getSeBps3()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getSeBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getSeBps4()/bpsEpsList.get(i).getSeBps4()),(1/12.0))-1))%>],
									
[ "<%=(i+5)+b7%>" , <%= stolist.get(i).getJulyPrice() %>, 
									<%=(int)bpsEpsList.get(i).getThBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps()/bpsEpsList.get(i).getThBps()),(1/12.0))-1))%>,
								    <%=(int)bpsEpsList.get(i).getThBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps2()/bpsEpsList.get(i).getThBps2()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getThBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps3()/bpsEpsList.get(i).getThBps3()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getThBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps4()/bpsEpsList.get(i).getThBps4()),(1/12.0))-1))%>],
[ "<%=(i+5)+b8%>" , <%= stolist.get(i).getAugPrice() %>, 
									<%=(int)bpsEpsList.get(i).getThBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps()/bpsEpsList.get(i).getThBps()),(1/12.0))-1))%>,
								    <%=(int)bpsEpsList.get(i).getThBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps2()/bpsEpsList.get(i).getThBps2()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getThBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps3()/bpsEpsList.get(i).getThBps3()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getThBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps4()/bpsEpsList.get(i).getThBps4()),(1/12.0))-1))%>],
[ "<%=(i+5)+b9%>" , <%= stolist.get(i).getSepPrice() %>, 
									<%=(int)bpsEpsList.get(i).getThBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps()/bpsEpsList.get(i).getThBps()),(1/12.0))-1))%>,
								    <%=(int)bpsEpsList.get(i).getThBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps2()/bpsEpsList.get(i).getThBps2()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getThBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps3()/bpsEpsList.get(i).getThBps3()),(1/12.0))-1))%>,
									<%=(int)bpsEpsList.get(i).getThBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getThBps4()/bpsEpsList.get(i).getThBps4()),(1/12.0))-1))%>],											

[ "<%=(i+5)+b10%>" , <%= stolist.get(i).getOctPrice() %>, 
									  <%=(int)bpsEpsList.get(i).getFoBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps()/bpsEpsList.get(i).getFoBps()),(1/12.0))-1))%>,
							 	      <%=(int)bpsEpsList.get(i).getFoBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps2()/bpsEpsList.get(i).getFoBps2()),(1/12.0))-1))%>,
							 		  <%=(int)bpsEpsList.get(i).getFoBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps3()/bpsEpsList.get(i).getFoBps3()),(1/12.0))-1))%>,
									  <%=(int)bpsEpsList.get(i).getFoBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps4()/bpsEpsList.get(i).getFoBps4()),(1/12.0))-1))%>],
[ "<%=(i+5)+b11%>" , <%= stolist.get(i).getNovPrice() %>, 
  									  <%=(int)bpsEpsList.get(i).getFoBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps()/bpsEpsList.get(i).getFoBps()),(1/12.0))-1))%>,
								      <%=(int)bpsEpsList.get(i).getFoBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps2()/bpsEpsList.get(i).getFoBps2()),(1/12.0))-1))%>,
									  <%=(int)bpsEpsList.get(i).getFoBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps3()/bpsEpsList.get(i).getFoBps3()),(1/12.0))-1))%>,
									  <%=(int)bpsEpsList.get(i).getFoBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps4()/bpsEpsList.get(i).getFoBps4()),(1/12.0))-1))%>],
[ "<%=(i+5)+b12%>" , <%= stolist.get(i).getDecPrice() %>, 
  									  <%=(int)bpsEpsList.get(i).getFoBps()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps()/bpsEpsList.get(i).getFoBps()),(1/12.0))-1))%>,
								      <%=(int)bpsEpsList.get(i).getFoBps2()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps2()/bpsEpsList.get(i).getFoBps2()),(1/12.0))-1))%>,
									  <%=(int)bpsEpsList.get(i).getFoBps3()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps3()/bpsEpsList.get(i).getFoBps3()),(1/12.0))-1))%>,
									  <%=(int)bpsEpsList.get(i).getFoBps4()*(int)(1+(Math.pow((bpsEpsList.get(i+1).getFoBps4()/bpsEpsList.get(i).getFoBps4()),(1/12.0))-1))%>
									  ], <%}%>
        
        
        ]);
        var options = {
          /* title: 'PBR Band', */
          hAxis: {showTextEvery: 6},
          vAxes: {0: {viewWindowMode:'explicit',
                      viewWindow:{
                                  max:2000000,
                                  min:20000
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
          chartArea:{left:80,top:30, width:800, height:300},
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_id'));
        chart.draw(data, options);
      }
     
</script>
<!-- <div class="ZOOM" href="/finance/analysis/image/pbr_samsung.jsp">확대보기</div> -->
PBR Band
<div id="chart_id" style="width: 1000px; height: 400px;">
</div>

<script type="text/javascript">
/* 달력 연도/월을 표기하고 달력이 들어갈 테이블을 작성합니다. */
document.write("기업정보 (단위 : 원)");
    //문자 결합 연산자를 사용해 요일이 나오는 행을 생성합니다.
var entData = "<div class='data'>";
entData += "<table class='table'>";
entData += "<thead>";
	entData += "<tr>";
		
        <% for (int i = 0; i< size-1;i++){ %>
		entData += "<th>구분</th>";
		entData += "<th><%= (i+5)+a1%></th>";
		entData += "<th><%= (i+5)+a2%></th>";
		entData += "<th><%= (i+5)+a3%></th>";
		entData += "<th><%= (i+5)+a4%></th>";
	entData += "</tr>";
entData += "</thead>";
entData += "<tbody>";
 		    entData += "<tr>";
 		   	entData += "<td>" + "자산" + "</td>";
 		    entData += "<td>" + <%= entinfolist.get(i).getFiasset()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getSeasset()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getThasset()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFoasset()%> + "</td>";
		   	entData += "</tr>";
 		    
		   	entData += "<tr>";
		   	entData += "<td>" + "부채" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFidept()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getSedept()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getThdept()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFodept()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "매출액" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFiqsales()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getSeqsales()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getThqsales()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFoqsales()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "영업이익" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFiprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getSeprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getThprofit()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFoprofit()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "당기순이익" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFinetprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getSenetprofit()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getThnetprofit()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFonetprofit()%> + "</td>";
		   	entData += "</tr>";
		    
		   	entData += "<tr>";
		   	entData += "<td>" + "주식총수" + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFicapitalstock()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getSecapitalstock()%> + "</td>";
 		   	entData += "<td>" + <%= entinfolist.get(i).getThcapitalstock()%> + "</td>";
		   	entData += "<td>" + <%= entinfolist.get(i).getFocapitalstock()%> + "</td>";
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