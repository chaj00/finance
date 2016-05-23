<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@page import="analysis.dto.EnterpriseDTO"%>
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
 <link rel="shortcut icon" href="/finance//images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/finance/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/finance/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/finance/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/finance/images/ico/apple-touch-icon-57-precomposed.png">



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
	margin-top: inherit;
	font-size: 20px;
	font:Monospace;
	color:navy;
}

div.col-md-10{
	margin-left: inherit;
}


</style>
<!-- analysis layout -->
</head>
<body >
<script type="text/javascript">
<%
ArrayList<EnterpriseinfoDTO> entinfolist = (ArrayList<EnterpriseinfoDTO>)request.getAttribute("entinfolist");
ArrayList<BpsepsDTO> bpsEpsList = (ArrayList<BpsepsDTO>)request.getAttribute("bpsEps");
ArrayList<StockinfoDTO> stolist = (ArrayList<StockinfoDTO>)request.getAttribute("stoinfo");
ArrayList<EnterpriseDTO> entlist = (ArrayList<EnterpriseDTO>)request.getAttribute("entlist");

%>
</script>
	<!--/.container--> 
	<div class="row">
		<div class="col-md-2">
			<div class="col-md-12">

				<ul class="list-group">

					<%
				 		int size= entlist.size();
				 		
						for (int i = 0; i< size;i++){ 
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
				</ul>

				<!-- <ul>
            <li href="/finance/stocklist.do?page=samsung&pathurl1=/analysis/samsung_pbrband.jsp">One</li>
            <li>Two</li>
            <li>Three</li>
          </ul> -->
			</div>
		</div>
		<div class="col-md-10">
			<div class="section">

				<img src= "analysis/image/PBR.jpg">
				
						
			</div>
		</div>
	</div>
	</header>
	<!--/header-->
</body>
</html>