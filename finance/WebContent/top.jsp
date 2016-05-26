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
    <link href="/finance/common/css/font-awesome.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="/finance/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/finance/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/finance/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/finance/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/finance/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<%
		String a = "1";
		String b = "2";
		String c = "3";
		String d = "4";
		
		int ep = Integer.parseInt(a) 
		+ (Integer.parseInt(b)*((Integer.parseInt(c)*12)
												+Integer.parseInt(d)));

		String iExpectedPrice = String.valueOf(ep);

%>
<script type = "text/javascript">
alert (<%= ep %>);

</script>

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
                        <li><a href="/finance/analysis/analysis_main.html">투자분석</a></li>
                        <li><a href="/finance/product/product_main.html">금융상품</a></li>
                        <li><a href="/finance/portfolio/portfolio_survey.jsp">포트폴리오</a></li>
                     	
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		

		
		
    </header><!--/header-->
</body>
</html>