<%@page import="analysis.dto.StockinfoDTO"%>
<%@page import="analysis.dto.BpsepsDTO"%>
<%@page import="analysis.dto.EnterpriseDTO"%>
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

div.col-md-10{
	margin-left: inherit;
}
div.PBR_Band{
	margin-top: 35px;
	border-style: groove;
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

					<li> **PBR Band** </li>
					<li class="list-group-item"><a
						href="/finance/stocklist.do?page=analysis&pathurl=/analysis/0pbrband/pbr_samsung.jsp">삼성전자</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">현대차</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">아모레퍼시픽</a></li>

					<li><a> **기업정보** </a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">삼성전자</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">현대차</a></li>
					<li class="list-group-item"><a href="/finance/stocklist.do">아모레퍼시픽</a></li>
					<li><a href="./" class="current">시작 페이지로</a></li>
				</ul>

				<!-- <ul>
            <li href="/finance/stocklist.do?page=samsung&pathurl1=/analysis/samsung_pbrband.jsp">One</li>
            <li>Two</li>
            <li>Three</li>
          </ul> -->
			</div>
		</div>
		<div class="col-md-10">
			<div class="PBR_Band">
				<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
<%
ArrayList<EnterpriseDTO> entlist = (ArrayList<EnterpriseDTO>)request.getAttribute("entlist");
ArrayList<BpsepsDTO> bpsEpsList = (ArrayList<BpsepsDTO>)request.getAttribute("bpsEps");
ArrayList<StockinfoDTO> stolist = (ArrayList<StockinfoDTO>)request.getAttribute("stoinfo");

String b1="01", b2="02", b3="03", b4="04", b5="05", b6="06", b7="07", b8="08", b9="09", b10="10", b11="11", b12="12";

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
          title: 'PBR Band',
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
          chartArea:{left:70,top:30, width:550, height:350},
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_id'));
        chart.draw(data, options);
      }
</script>
<div id="chart_id" style="width: 800px; height: 450px;"></div>
			</div>
		</div> 
	</div>
	</header>
	<!--/header-->
</body>
</html>