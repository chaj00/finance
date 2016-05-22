<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="product.dto.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<%
	ArrayList<ProductDTO> prdlist = (ArrayList<ProductDTO>)request.getAttribute("productlist"); 
	ArrayList<String> opNamelist = (ArrayList<String>)request.getAttribute("opNamelist");
	%>

<link rel="stylesheet" media="all" href="/finance/common/css/common.css"/>	
<link rel="stylesheet" media="all" href="/finance/common/css/homepage.css"/>
<link rel="stylesheet" media="all" href="/finance/common/css/ux_header.css"/>	
<!-- <link rel="stylesheet" media="all" href="/finance/common/css/cm.sspop.css"/>	 -->
<link rel="stylesheet" media="all" href="/finance/common/css/main2.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script type="text/javascript">
	var xhr;
	$(document).ready(function(){ 
	    $("#fund1-all").change(function(){
	       	$(".chk1").prop('checked', $(this).prop("checked"));
	      });
	    $("#fund2-all").change(function(){
		      $(".chk2").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund3-all").change(function(){
		      $(".chk3").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund4-all").change(function(){
		      $(".chk4").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund5-all").change(function(){
		      $(".chk5").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund6-all").change(function(){
		      $(".chk6").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund7-all").change(function(){
		      $(".chk7").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund8-all").change(function(){
		      $(".chk8").prop('checked', $(this).prop("checked"));
		      });
	});
	
	
</script>	     
</head>
<body>
<script type="text/javascript">
function checkSelectedValue(){
/* 	alert("들어옴"); */
	var classify = [];
	var type = [];
	var prdate = [];
	var scale = [];
	var profit = [];
	var charge = [];
	var std = [];
	var opname =[];
	
	$("input[name=ForgnSectCd]:checked").each(function(){
		classify.push($(this).val());
		//ㅋalert("TEST"+$(this).val());
	});
	$("input[name=FundInvstTypeCd]:checked").each(function(){
		type.push($(this).val());
		//alert(chk2Val);
	}); 
	$("input[name=SetPeriodMM]:checked").each(function(){
		prdate.push($(this).val());
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
	$("input[name=TotRwrt]:checked").each(function(){
		charge.push($(this).val());
		//alert(chk6Val);
	});
	$("input[name=StdGrade]:checked").each(function(){
		std.push($(this).val());
		//alert(chk6Val);
	}); 
	$("input[name=OperCoCdList]:checked").each(function(){
		opname.push($(this).val());
		//alert(chk6Val);
	}); 
/* 	alert("classify :"+classify);
	alert("type :"+type);
	alert("prdate :"+prdate);
	alert("scale :"+scale);
	alert("profit :"+profit);
	alert("charge :"+charge);
	alert("std :"+std);
	alert("opname :"+opname); */
	runAjax(classify,type,prdate,scale,profit,charge,std,opname)
}

function runAjax(classify,type,prdate,scale,profit,charge,std,opname){
/* 	alert("test"); */
 	xhr=new XMLHttpRequest();
	xhr.onreadystatechange=finfinanceSearchs;
	xhr.open("GET", "/finance/searchPrd2.do?classify="+classify+"&type="+type
			+"&prdate="+prdate+"&scale="+scale+"&profit="+profit+"&charge="+charge
			+"&std="+std+"&opname="+opname,true);
/* 	xhr.open("GET", "/finance/searchPrd2.do?classify="+classify+"&type="+type
			+"&prdate="+prdate+"&scale="+scale+"&profit="+profit+"&charge="+charge
			+"&std="+std+"&opname="+opname+"&classify2="+classify2,true); */
	xhr.send(); 
}

function finfinanceSearchs(){
		var prd;
		
		var text;
		if(xhr.readyState==4 && xhr.status==200) {
			prd =JSON.parse(xhr.responseText);
			prdView(prd);
		}
	}

function prdView(prd){
		var prdCount = prd.length;
	/* 	alert(prdCount) */
		
	var strHtml='';
		for (var i = 0; i<prdCount; i++){

			strHtml +='<tr>';
			strHtml +='   	<td>'+(i+1)+'</td>';		
			strHtml +='		<td class="prd">';
			strHtml +='			<p class="title">';
			strHtml +='				<a href="">'+prd[i].title+'</a>';
			strHtml +='			</p>';
			strHtml +='			<ul class="fund-details">';
			strHtml +='				<li>';
			strHtml +='					<dl>';
			strHtml +='						<dt>설정일</dt>';
			strHtml +='						<dd>'+prd[i].prdate+'</dd>';
		strHtml +='					</dl>';
		strHtml +='				</li>';
		strHtml +='				<li>';
		strHtml +='					<dl>';	
		strHtml +='						<dt>유형</dt>';
			strHtml +='						<dd>'+prd[i].type+'</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';
		strHtml +='				<li class ="bul">';
		strHtml +='					<dl class="bold">';	
		strHtml +='						<dt>총설정액</dt>';
			strHtml +='						<dd>'+prd[i].scale+'억원</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';
		strHtml +='				<li>';
		strHtml +='					<dl>';	
		strHtml +='						<dt>운용사</dt>';
			strHtml +='						<dd>'+prd[i].opname+'</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';
		strHtml +='				<li class="bul">';
		strHtml +='					<dl class="bold">';	
		strHtml +='						<dt>총보수</dt>';
			strHtml +='						<dd>'+prd[i].charge+'%</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';	
		strHtml +='				<li class="bul">';
		strHtml +='					<dl class="bold">';	
		strHtml +='						<dt>위험등급</dt>';
			strHtml +='						<dd>'+prd[i].std+'</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';	
		strHtml +='			</ul>';	
		strHtml +='		</td>';
		strHtml +='		<td class="prd">';	
		strHtml +='			<em class="up">'+prd[i].oneprofit+'%</em>';
		strHtml +='		</td>';
		strHtml +='		<td class="prd">';	
		strHtml +='			<em class="up">'+prd[i].threeprofit+'%</em>';
		strHtml +='		</td>';
		strHtml +='		<td class="prd">';	
		strHtml +='			<em class="up">'+prd[i].sixprofit+'%</em>';
		strHtml +='		</td>';
		strHtml +='		<td class="prd">';	
		strHtml +='			<em class="up">'+prd[i].twelveprofit+'%</em>';
		strHtml +='		</td>';
		strHtml +='	</tr>';

		}
	if(schText!=null){
		var cmt2 ="";
		cmt2 +='<h2>'+schText+' 검색결과 '+prdCount+' 건</h3>';
		$("#rstCmt").html(cmt2);
	}else{
		var cmt ="";
		cmt +='<h2> 전체: '+prdCount+' 건</h3>';
		$("#rstCmt").html(cmt);
	}	
	$("#bodyList").html(strHtml);
	}
var schText;
function doSmartSearchList(){
		schText=$("#SearchText").val();
		
		opnSearchAjax(schText);
	}
	
	function opnSearchAjax(schText){
		/* alert("들어왔당"+schText); */
		xhr=new XMLHttpRequest();
	xhr.onreadystatechange=finfinanceSearchs;
	xhr.open("GET", "/finance/ProductSearchOpnameServlet.do?opname="+schText,true);
	xhr.send(); 
			
	}
	
    


</script>

<div id="wrap">
<div class="top_notice" data-role="common-ui-notice-top">
</div>

<p class="skipNav">
	<span><a href="#contents">본문바로가기</a></span>
	<span><a href="#nav">주메뉴바로가기</a></span>
	
</p>


    <!-- // Header -->
    <!-- Container -->
    <div id="container">
        <!-- Contents -->
        <div id="contents" class="finance" style="width:1100px;">
            <span class="blind">본문</span>
            
            <h1 style="color:black;">스마트검색</h1>
          <div id="tab_content1">
            
                

 <form name="frm" id="frm" method="post" onsubmit="return false;">
 <div class="search fund chking">
     <fieldset>
     <legend>펀드검색</legend>
         <input type="text" name="SearchText" id="SearchText"  value="" title="펀드명">
         <input type="hidden" name="YieldMM" id="YieldMM"  value="3" title="펀드명">
         <a href="javascript:doSmartSearchList('1');" class="btn">펀드검색</a>
         <dl id="dlKeyword">
         </dl>
     </fieldset>
     <hr>
     <table class="tbl-type">
     <caption><strong>펀드 검색 조건 설정</strong></caption>
         <thead>
             <tr>
                 <th scope="col">펀드구분</th>
                 <th scope="col">펀드유형</th>
                 <th scope="col">설정기간</th>
                 <th scope="col">총설정액</th>
                 <th scope="col">수익률(3개월)</th>
                 <th scope="col">총보수</th>
                 <th scope="col">위험등급</th>
			     <th scope="col">운용사</th>	
                 
             </tr>
         </thead>
         <tbody>
             <tr>
                           
                 <td>
                     <ul>
                       <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-all" value="" > <label for="fund1-1">전체</label></li>
                         <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-2" value="국내"> <label for="fund1-2">국내</label></li>
                         <li><input type="checkbox"  class="chk1" name="ForgnSectCd" id="fund1-3" value="해외" > <label for="fund1-3">해외</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                         <li><input type="checkbox" class="chk2"name="FundInvstTypeCd" id="fund2-all" value="" > <label for="fund2-1">전체</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-2" value="주식형" > <label for="fund2-2">주식형</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-3" value="주식혼합형" > <label for="fund2-3">주식혼합형</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-4" value="채권혼합형" > <label for="fund2-4">채권혼합형</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-5" value="채권형"   > <label for="fund2-5">채권형</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-6" value="인덱스형" > <label for="fund2-6">인덱스형</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-7" value="MMF"   > <label for="fund2-7">MMF</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-8" value="파생상품"   > <label for="fund2-8">파생상품</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-9" value="기타"  > <label for="fund2-9">기타</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul class="scroll">
                         <li><input type="checkbox" class="chk3all" name="SetPeriodMM" id="fund3-all" value=""  > <label for="fund3-1">전체</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-2" value="1-"      > <label for="fund3-2">1개월 미만</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-3" value="1-3"      > <label for="fund3-3">1~3개월</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-4" value="3-6"      > <label for="fund3-4">3~6개월</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-5" value="6-12"     > <label for="fund3-5">6개월~1년</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-6" value="12-24"    > <label for="fund3-6">1~2년</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-7" value="24-" > <label for="fund4-7">2년 초과</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                         <li><input type="checkbox" class="chk4all" name="kfrEstabAmUk" id="fund4-all" value="" > <label for="fund4-1">전체</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-2" value="10-"       > <label for="fund4-2">10억 미만</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-3" value="10-30"      > <label for="fund4-3">10~30억</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-4" value="30-50"      > <label for="fund4-4">30~50억</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-5" value="50-100"     > <label for="fund4-5">50~100억</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-6" value="100-500"    > <label for="fund4-6">100~500억</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-7" value="500-" > <label for="fund4-7">500억 초과</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                          <li><input type="checkbox" class="chk5all" name="Yield" id="fund5-all" value="" > <label for="fund5-1">전체</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-2" value="0-"> <label for="fund5-2">0% 미만</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-3" value="0-10"> <label for="fund5-3">0~10%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-4" value="10-20"> <label for="fund5-4">10~20%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-5" value="20-30"> <label for="fund5-5">20~30%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-6" value="30-40"> <label for="fund5-6">30~40%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-7" value="40-50"> <label for="fund5-7">40~50%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-8" value="50-"> <label for="fund5-8">50% 초과</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                         <li><input type="checkbox" class="chk6all" name="TotRwrt" id="fund6-all" value="" > <label for="fund6-1">전체</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-2" value="1-"> <label for="fund6-2">1% 미만</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-3" value="1-2"> <label for="fund6-3">1~2%</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-4" value="2-3"> <label for="fund6-4">2~3%</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-5" value="3-"> <label for="fund6-5">3% 초과</label></li>                     
                        </ul>
                 </td>
                           
                 <td>
                      <ul id ="Std" >
                    	 <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-all" value=""> <label for="fund7-all">전체</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-1" value="0.5-"><label for="fund7-1">매우 낮은 위험</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-2" value="0.5-5"><label for="fund7-2">낮은 위험</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-3" value="5-10"><label for="fund7-3">보통 위험</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-4" value="10-15"><label for="fund7-4">다소 높은 위험</label></li>
                          <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-5" value="15-25"><label for="fund7-5">높은 위험</label></li>
                           <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-6" value="25-"><label for="fund-7-6">매우 높은 위험</label></li>
                         
                     </ul>
                 </td>
                           
                <td>
                     <ul class="scroll" id="getOperCoListUl">
                     	<li><input type="checkbox" class="chk8" name="OperCoCdListAll" id="fund8-all" value="">전체</li>
                    <%
                     int opNameLen=opNamelist.size();
                     for(int i=0; i<opNameLen;i++){
                    %> 
                  
                      <li><input type="checkbox" class="chk8" name="OperCoCdList" id="fund8-<%=i+1%>" value="<%=opNamelist.get(i).toString()%>">
                       <%=opNamelist.get(i).toString()%></li>
                    	<%} %>		 
                     </ul>
                 </td>
             </tr>
         </tbody>
     </table>

    
   
     <div class="btn-area">
         <a href="javascript:checkSelectedValue();" class="btn big">선택 조건으로 검색</a>
         <a href="javascript:clearSmartSearch();" class="btn3 big refresh">조건 초기화</a>
      
     </div>
 </div>
 
 <input type="hidden" name="RpayDisDtYn" value="N">
 
 </form>
                <div id="fundListDiv">
                
<!--                 <div class="board-paging">
    <p class="total"></p>
    <div class="fr">
        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:initList();" class="refresh">초기화</a>
    </div>
</div>
                 -->    
<!-- 
<div class="board-paging">
    <p class="total"></p>
    <div class="fr">
        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:initList();" class="refresh">초기화</a>
    </div>
</div>
 -->
 <div id ="rstCmt"> </div>
 
<div class="search-code">
	<form>
    <div class="fl">    	
     </div>
    </form>
    <div class="fr">
        <ul class="sorting">
            <li class="off" ><a href="#" column="FstSetDt" class="down" title="내림차순으로 정렬">설정일</a></li>
            <li class="off"><a href="#" column="fundClasSum" class="down" title="내림차순으로 정렬">총설정액</a></li>
            <li class="off"><a href="#" column="TotRwrt" class="up" title="올림차순으로 정렬">총보수</a></li>
        </ul>
        <fieldset>
        <legend>펀드 결과목록 선택사항</legend>
        	
            <select name="" id="fundAttr" title="펀드속성 선택">
                <option value="" selected>펀드속성</option>
                <option value="recomYn">추천</option>
                <option value="bestYn">판매베스트</option>
                <option value="newYn">신규</option>
                <option value="rankYn">랭킹</option>
                <option value="themeYn">테마</option>
            </select>
            <select id="listRow" name="listRow" title="리스트 개수 선택">
	            <option value="10" selected>10개씩</option>    
	            <option value="20" >20개씩</option>
                <option value="40">40개씩</option>
                <option value="60">60개씩</option>
            </select>
            <a href="javascript:goListCnt();" class="btn3" title="펀드 검색결과 보기">보기</a>
        </fieldset>
    </div>
</div>
<table class="tbl-type fund fsL">
<caption><strong>펀드 검색 결과 목록</strong></caption>
<colgroup>
    <col style="width:3%">
    <col>
    <col style="width:8.5%" span="4">	<!-- 20140615 수정 -->
    <col style="width:13%">
    <col style="width:11%">
</colgroup>
    <thead class="sort">
        <tr>
          <th scope="col" rowspan="2"></th>
            <th scope="col" rowspan="4" class="off"><a column="FundKrNm" href="#" class="up" title="올림차순으로 정렬">펀드명</a></th>
            <th scope="colgroup" colspan="6">수익률(%)</th>
          <!--   <th scope="col" rowspan="2"><input type="checkbox" name="compareAllChk" id="compareAllChk" value="" title="펀드 전체 선택"></th>
            <th scope="col" rowspan="2" class="off"><a column="FundKrNm" href="#" class="up" title="올림차순으로 정렬">펀드명</a></th>
            <th scope="colgroup" colspan="4">수익률(%)</th>
            <th scope="col" rowspan="2">3개월 설정액 추이<br>(억)</th>
            <th scope="col" rowspan="2">바로가기</th> -->
        </tr>
        <tr>
            <th scope="col" class="off"><a column="Yield1M" href="#" class="down" title="내림차순으로 정렬">1개월</a></th>
            <th scope="col" class="off"><a column="Yield3M" href="#" class="down" title="내림차순으로 정렬">3개월</a></th>
            <th scope="col" class="off"><a column="Yield6M" href="#" class="down" title="내림차순으로 정렬">6개월</a></th>
            <th scope="col" class="off"><a column="AnnYield" href="#" class="down" title="내림차순으로 정렬">1년</a></th>
        </tr>
    </thead>
    <tbody id="bodyList"></tbody>
    <%-- <tbody id="bodyList">
     <%	  
    	  String pattern = "#.####";
    	  DecimalFormat dfomat = new DecimalFormat(pattern);
          int prdeLen=prdlist.size();
          for(int i=0; i<prdeLen;i++){
      	  ProductDTO prd = prdlist.get(i);
                         
    %> 
    <tr>
    	<td><%=i+1%></td>
    
    	<td class="prd">
    		<p class="title">
    			<a href=""><%=prd.getTitle()%></a>
   			</p>
   			<ul class="fund-details">	
   				<li> 
   					<dl>
   						<dt>설정일</dt>
   						<dd><%=prd.getPrdate().substring(0,11)%></dd>
   					</dl>
				</li>
			 	<li>
					 <dl>
					 	 <dt>유형</dt>
				 	 	 <dd><%=prd.getType()%></dd>
			 	 	 </dl>
		 	 	 </li>
	 	 	 	<li class="bul">
	 	 	 		<dl class="bold">
		 	 	 		<dt>총설정액</dt>
		 	 	 		<dd><%=Float.parseFloat(prd.getScale())%>억원</dd>
		 	 	 	</dl>
 			 	</li>
	 			 <li>
 	 	 			 <dl>
	 	 	 			 <dt>운용사</dt>
	 	 	 			 <dd><%=prd.getOpname()%></dd>
 	 	 			 	</dl>
 			 	</li>
 			 	<li class="bul">
 			 	 	 <dl class="bold">
 			 	 	 	<dt>총보수</dt>
		 	 	 		<dd><%=dfomat.format(Float.parseFloat(prd.getCharge())*100)%>%</dd>
	 	 	 		</dl>
 	 	 		</li>
 	 	 		
 	 	 		<li class="bul">
 			 	 	 <dl class="bold">
 			 	 	 	<dt>위험등급</dt>
		 	 	 		<dd><%=prd.getStd()%>%</dd>
	 	 	 		</dl>
 	 	 		</li>
 	 	 	
 			</ul>
		</td>
		<%if(prd.getOneprofit()==null){ %>
      	<td class="prd">
            <em class="up"><%=" - "%>%</em>
        </td>
        <%}else{ %>
        <td class="prd">
            <em class="up"><%=dfomat.format(Float.parseFloat(prd.getOneprofit())*100)%>%</em>
        </td>
        <%} %>
        
        <%if(prd.getThreeprofit()==null){ %>
      	<td class="prd">
            <em class="up"><%=" - "%>%</em>
        </td>
        <%}else{ %>
        <td class="prd">
        	<em class="down"><%=dfomat.format(Float.parseFloat(prd.getThreeprofit())*100)%>%</em>
       	</td>
        <%} %>
        
        <%if(prd.getSixprofit()==null){ %>
      	<td class="prd">
            <em class="up"><%=" - "%>%</em>
        </td>
        <%}else{ %>
        <td class="prd">
        	<em class="up"><%=dfomat.format(Float.parseFloat(prd.getSixprofit())*100)%>%</em>
       	</td>
        <%} %>
       	
       	 <%if(prd.getTwelveprofit()==null){ %>
      	<td class="prd">
            <em class="up"><%=" - "%>%</em>
        </td>
        <%}else{ %>
       	<td class="prd">
        	<em class="down"><%=dfomat.format(Float.parseFloat(prd.getTwelveprofit())*100)%>%</em>
       	</td>
        <%} %>
       
     </tr>
     <%} %>   
    </tbody> --%>
</table>
<!-- <div class="btn-area">
    <span class="fl">
        <a name="compareBtn" href="#" class="btn4" title="팝업 띄움">체크비교</a>
    </span>
    <div class="pagingNav">
    </div>
</div>
         
 -->                
             
<!-- 
            
<div class="board-paging">
    <p class="total mutuelTotal"></p>
    <div class="fr">

        <span class="date" id="maxTrdDtSpan"></span>
        
    </div>
</div>

 -->

</body>
</html>
