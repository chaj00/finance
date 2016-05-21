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


<!-- Pingendo CSS -->
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


</style>

<!-- chart -->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Home | PROJECT</title>
<!-- Magnific Popup core CSS file -->
<link rel="stylesheet" href="magnific-popup/magnific-popup.css">

<!-- jQuery 1.7.2+ or Zepto.js 1.0+ -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<!-- Magnific Popup core JS file -->`
<script src="magnific-popup/jquery.magnific-popup.js"></script>

<!-- analysis layout -->
</head>
<body class="homepage">

	<header id="header"> <nav class="navbar navbar-inverse"
		role="banner">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img
				src="/finance/images/logo.png" alt="logo"></a>
		</div>

		<div class="collapse navbar-collapse navbar-right">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a
					href="/finance/stocklist.do?page=analysis&pathurl=/analysis/layout/analysis_layout.jsp">투자분석</a></li>
				<li><a href="/finance/product/product_main.html">금융상품</a></li>
				<li><a href="/finance/portfolio/">포트폴리오</a></li>
			</ul>
		</div>
	</div>
	<!--/.container--> </nav><!--/nav-->
	<div class="row">
		<div class="col-md-2">
			<div class="col-md-12">

				<ul class="list-group">

					<li> **PBR Band** </li>
					<li class="list-group-item"><a
						href="/finance/analysis/0pbrband/pbr_samsung.jsp">삼성전자</a></li>
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
			<div class="section">
				<ol>
					<li>One</li>
					<li>Two</li>
					<li>Three</li>
				</ol>
			</div>
		</div>
	</div>
	</header>
	<!--/header-->
</body>
</html>