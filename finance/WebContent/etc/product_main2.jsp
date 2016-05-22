<%@page import="product.dto.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<%
	ArrayList<ProductDTO> prdlist = (ArrayList<ProductDTO>)request.getAttribute("productlist"); 
	ArrayList<String> opNamelist = (ArrayList<String>)request.getAttribute("opNamelist");
	%>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  	
  	<script type="text/javascript">
	var xhr;
	$(document).ready(function(){ 
	    $("#fund1All").change(function(){
	      $(".chk1").prop('checked', $(this).prop("checked"));
	      });
	    $("#fund2All").change(function(){
		      $(".chk2").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund3All").change(function(){
		      $(".chk3").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund4All").change(function(){
		      $(".chk4").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund5All").change(function(){
		      $(".chk5").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund6All").change(function(){
		      $(".chk6").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund7All").change(function(){
		      $(".chk7").prop('checked', $(this).prop("checked"));
		      });
	   
		    
	});
	function checkSelectedValue(){
		alert("들어옴");
		var classify = [];
		var type = [];
		var date = [];
		var scale = [];
		var profit = [];
		var charge = [];
		var std = [];
		
    	$("input[name=ForgnSectCd]:checked").each(function(){
    		classify.push($(this).val());
    		//alert(chk1Val);
    	});
    	$("input[name=FundInvstTypeCd]:checked").each(function(){
    		type.push($(this).val());
    		//alert(chk2Val);
    	}); 
    	$("input[name=SetPeriodMM]:checked").each(function(){
    		date.push($(this).val());
    		//alert(chk3Val);
    	}); 
    	$("input[name=kfrEstabAmUk]:checked").each(function(){
    		scale.push($(this).val());
    		//alert(chk4Val);
    	}); 
    	$("input[name=Yield]:checked").each(function(){
    		profit.push($(this).val());
    		//alert(chk5Val);
    	}); 
    	$("input[name=StdGrade]:checked").each(function(){
    		charge.push($(this).val());
    		//alert(chk6Val);
    	}); 
    	$("input[name=TotRwrt]:checked").each(function(){
    		std.push($(this).val());
    		//alert(chk6Val);
    	}); 
    	alert("classify :"+classify);
    	alert("type :"+type);
    	alert("date :"+date);
    	alert("scale :"+scale);
    	alert("profit :"+profit);
    	alert("charge :"+charge);
    	alert("std :"+std);
    	runAjax(classify,type,date,scale,profit,charge,std)
   	}
	
	function runAjax(classify,type,date,scale,profit,charge,std){
		xhr=new XMLHttpRequest();
		xhr.onreadystatechange=finfinanceSearchs;
		xhr.open("GET", "/finance/financeSearchs.do?classify="+classify+"&type="+type
				+"&date="+date+"&scale="+scale+"&profit="+profit+"&charge="+charge
				+"&std="+std,true);
		xhr.send();
	}
 	function finfinanceSearchs(){
 		alert("들어옴");
 		var text;
 		if(xhr.readyState==4 && xhr.status==200) {
 		document.getElementById("bodyList").innerHTML
		=text;
 		}
 		
 	}
	</script>
	
</head>
<body>
<div class="top_notice">
</div>
    <!-- // Header -->
    <!-- Container -->
    <div id="container">
        <!-- Contents -->
        <div id="contents" class="finance">


            <h1>Web based advisor</h1>

            <ul class="tab-type">
                <li id="tab_li1"><a href="#" id="tab_header1" onclick="showTab(1);">펀드</a></li>
                <li id="tab_li2"><a href="#" id="tab_header2" onclick="showTab(2);">ELS/DLS</a></li>
                <li id="tab_li3"><a href="#" id="tab_header3" onclick="showTab(3);">채권</a></li>
                <li id="tab_li4"><a href="#" id="tab_header4" onclick="showTab(4);">삼성POP골든랩</a></li>
            </ul>


            <div id="tab_content1">


</body>
</html>