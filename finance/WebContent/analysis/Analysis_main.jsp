

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
    <link rel="shortcut icon" href="/finance//images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/finance/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/finance/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/finance/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/finance/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body class="homepage">

    <header id="header">
 
        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="/finance/images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>          
                        <li><a href="/finance/analysis/Analysis_main.html">투자분석</a></li>
                        <li><a href="/finance/product/product_main.html">금융상품</a></li>
                        <li><a href="/finance/portfolio/">포트폴리오</a></li>
                     	
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->


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
          hAxis: {showTextEvery: 12},
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
          chartArea:{left:80,top:50, width:550, height:250},
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_id'));
        chart.draw(data, options);
      }
</script>
<div id="chart_id" style="width: 1700px; height: 700px;"></div>
</body>
</html>