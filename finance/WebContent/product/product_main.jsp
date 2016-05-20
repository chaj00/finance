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
<link rel="stylesheet" href="/finance/common/css/bootstrap.css"/>	
<link rel="stylesheet" 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet" href="/finance/common/css/font-awesome.css"/>
<link rel="stylesheet" href="/finance/common/css/build.css"/>
<link rel="stylesheet" href="/finance/common/css/bootstrap.css"/>
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
	    $("#fund8All").change(function(){
		      $(".chk8").prop('checked', $(this).prop("checked"));
		      });
	   
		    
	});
	function checkSelectedValue(){
		alert("들어옴");
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
    		alert("TEST"+$(this).val());
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
    	
    	
    	
    	alert("classify :"+classify);
    	alert("type :"+type);
    	alert("prdate :"+prdate);
    	alert("scale :"+scale);
    	alert("profit :"+profit);
    	alert("charge :"+charge);
    	alert("std :"+std);
    	alert("opname :"+opname);
    	runAjax(classify,type,prdate,scale,profit,charge,std,opname)
   	}
	
	function runAjax(classify,type,prdate,scale,profit,charge,std,opname){
		alert("test");
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
 		alert("들어옴");
 		var text;
 		if(xhr.readyState==4 && xhr.status==200) {
 			prd =JSON.parse(xhr.responseText);
 			prdView(prd);
 		}
 	}
 	
 	function prdView(prd){
 		var prdCount = prd.length;
 		alert(prdCount)
 		alert(prd[0].title);
 		alert(prd[1].title);
 		alert(prd[2].title);
 		alert(prd[3].title);
		var strHtml='';
 		for (var i = 0; i<prdCount; i++){

 			strHtml +='<tr>';
 			strHtml +='		<td>';
 			strHtml +='			<div class = "checkbox">';
 			strHtml +='    			<input type="checkbox" name="compareChk" id="compareChk" value=" " title="">'		
 			strHtml +='			</div>';
 			strHtml +='		</td>';
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
 			strHtml +='						<dd>'+prd[i].scale+'</dd>';
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
 			strHtml +='						<dd>'+prd[i].charge+'</dd>';
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
		$("#bodyMutuelList").html(strHtml);
 	}
 	
 	
 	function doSmartSearchList(){
 		var schText=$("#SearchText").val();
 		
 		opnSearchAjax(schText);
 	}
 	
 	function opnSearchAjax(schText){
 		alert("들어왔당"+schText);
 		xhr=new XMLHttpRequest();
		xhr.onreadystatechange=finfinanceSearchs;
		xhr.open("GET", "/finance/ProductSearchOpnameServlet.do?opname="+schText,true);
		xhr.send(); 
 			
 	}
	</script>
	
	<style type="text/css">
	
	table.gridtable {
		font-family: verdana,arial,sans-serif;
		font-size:11px;
		color:#333333;
		border-width: 1px;
		border-color: #f2f2f2;
		border-collapse:separate;
		margin-bottom: 20px;
		display: block;
		
		}
	table.gridtable th {
		border-width: 1px;
		padding-right:8px;
		border-style: solid;
		border-color: #666666;
		background-color: inherit;
		text-align: center;
		
	}
	table.gridtable td {
		border-width: 1px;
		border-style: solid;
		padding-right:40px;
		border-color: #666666;
		background-color: #ffffff;
		height: 100px;
		overflow: auto;
		
    	
	}
	
	.scl  {
		height: 800px;
		
    	
	}
	
	
  

	
</style>
</head>
<body>
<div id="wrap">
    <!-- Header -->


<div class="top_notice" data-role="common-ui-notice-top">
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
    
     <table class="gridtable">
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
             <tr class = "scl" style ="height: 800px">
 				 <td>
					
                     <ul id ="ForgnSect"> <!-- 펀드구분 -->
                         <li><input type="checkbox" class="chk1all" name="ForgnSectCdall" id="fund1All" value="1">전체</li>
                         <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-1" value="국내"> 국내</li>
                         <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-2" value="해외" >해외</li>
                     </ul>
                	
                 </td>

                 <td>
                     <ul id ="FundInvstType" > <!-- 펀드유형 -->
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCdAll" id="fund2All" value="">전체</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-1" value="주식형">주식형</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-2" value="주식혼합형">주식혼합형</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-3" value="채권혼합형">채권혼합형</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-4" value="채권형">채권형</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-5" value="인덱스">인덱스형</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-6" value="MMF">MMF</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-7" value="파생상품">파생상품</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-8" value="기타">기타</li>
                     </ul>
                 </td>


                 <td>
                     <ul id ="SetPeriod" > 
                         <li><input type="checkbox" class="chk3" name="SetPeriodMMAll" id="fund3All" value="">전체</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-1" value="1-">1개월 미만</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-2" value="1-3">1~3개월</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-3" value="3-6">3~6개월</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-4" value="6-12">6개월~1년</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-5" value="12-24">1~2년</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-6" value="24-">2년 초과</li>
                     </ul>
                 </td>

                 <td>
                     <ul id ="kfrEstabAm">
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUkAll" id="fund4All" value=""><label for="fund5-1">전체</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-1" value="10-">10억 미만</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-2" value="10-30">10~30억</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-3" value="30-50">30~50억</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-4" value="50-100">50~100억</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-5" value="100-500"><label for="fund5-6">100~500억</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-6" value="50-"><label for="fund5-7">500억 초과</label></li>
                     </ul>
                 </td>

                 <td>
                     <ul id ="Yld" >
                         <li><input type="checkbox" class="chk5" name="YieldAll" id="fund5All" value="">전체</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-1" value="0-">0% 미만</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-2" value="0-10">0~10%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-3" value="10-20">10~20%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-4" value="20-30">20~30%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-5" value="30-40">30~40%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-6" value="40-50">40~50%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-7" value="50-">50% 초과</li>
                     </ul>
                 </td>

                 <td>
                     <ul id = "Tot">
                     	 <li><input type="checkbox" class="chk6" name="TotRwrtAll" id="fund6All" value="">전체</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-1" value="1-">1% 미만</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-2" value="1-2">1~2%</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-3" value="2-3">2~3%</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-4" value="3-">3% 초과</li>
                         
                     </ul>
                 </td>
                 
                 <td>
                     <ul id ="Std" >
                    	 <li><input type="checkbox" class="chk7" name="StdGradeAll" id="fund6All" value=""> 전체</li>    
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-1" value="0.5-">매우 낮은 위험</li><!--0.5% 이하일 때 6등급(매우 낮은 위험)-->
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-2" value="0.5-5">낮은 위험</li><!-- 0.5~5%일 때 5등급(낮은 위험)-->
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-3" value="5-10">보통 위험</li> <!--  5~10%일 때 4등급(보통 위험 -->
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-4" value="10-15">다소 높은 위험</li> <!--10~15%일 때 3등급(다소 높은 위험)-->
                          <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-5" value="15-25">높은 위험</li> <!-- 15~25%일 때 2등급(높은 위험)-->
                           <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-6" value="25-">매우 높은 위험</li><!-- 수익률 변동성이 25%를 초과할 경우 1등급(매우 높은 위험)-->
                         
                     </ul>
                 </td>
                 <td style="overflow-y:scroll; height: 100px ">
           
                     <ul class="scroll" id="getOperCoListUl">
                     <li><input type="checkbox" class="chk8" name="OperCoCdListAll" id="fund8All" value="">전체</li>
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
     <!-- Indicates a successful or positive action -->
		<button type="button" class="btn btn-primary" onclick="javascript:checkSelectedValue();">선택 조건으로 검색</button>
        <button type="button" class="btn btn-danger" onclick="javascript:checkSelectedValue();">조건 초기화</button>
     </div>
 </div>

 <input type="hidden" name="RpayDisDtYn" value="N">

 </form>
                <div id="fundListDiv">



<div class="board-paging">
    <p class="total"></p>
    <div class="fr">
        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:initList();" class="refresh">초기화</a>
    </div>
</div>

<div class="search-code">
	<form>
    <div class="fl">
        <a name="compareBtn" href="#" class="btn4" title="팝업 띄움">체크비교</a>
        <label for="fund0-1" class="single"><input type="checkbox" name="fundGrop" id="fund0-1" value="Y">대표펀드보기</label>
        <ul class="sorting2" list_type="간략보기" >
            <li class="on"><a href="#" class="list">간략보기</a></li>
            <li><a href="#" class="list2">자세히보기</a></li>
        </ul>
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
            <th scope="col" class="off"><a column="Yield1M" href="#" class="down" title="내림차순으로 정렬">1개월</a></th>
            <th scope="col" class="off"><a column="Yield3M" href="#" class="down" title="내림차순으로 정렬">3개월</a></th>
            <th scope="col" class="off"><a column="Yield6M" href="#" class="down" title="내림차순으로 정렬">6개월</a></th>
            <th scope="col" class="off"><a column="AnnYield" href="#" class="down" title="내림차순으로 정렬">1년</a></th>
        </tr>
    </thead>

 
    
</table>
   <div id="bodyList">
    </div>
<div class="btn-area">
    <span class="fl">
        <a name="compareBtn" href="#" class="btn4" title="팝업 띄움">체크비교</a>
    </span>
    <div class="pagingNav">
    </div>
</div>




                <div id="mutuelListDiv" style="display:inline;">


</head>

<div class="board-paging">
    <p class="total mutuelTotal"></p>
    <div class="fr">

        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:clearMutuelList();" class="refresh">초기화</a>
    </div>
</div>

<div class="search-code">
    <div class="fr">
        <ul class="sorting">
            <li class="off"><a column="OPRN_BEGN_DATE" href="#" class="down" title="내림차순으로 정렬">신상품</a></li>
        </ul>
        <fieldset>
        <legend>펀드 결과목록 선택사항</legend>
            <select id="mListRow" name="listRow" title="리스트 개수 선택">
                <option value="20" selected>20개씩</option>
                <option value="40">40개씩</option>
                <option value="60">60개씩</option>
            </select>
            <a href="javascript:goMutuelListCnt();" class="btn3" title="펀드 검색결과 보기">보기</a>
        </fieldset>
    </div>
</div>

<table class="tbl-type fund">
<caption><strong>펀드 검색 결과 목록</strong></caption>
<colgroup>
    <col>
    <col style="width:11%" span="4">
    <col style="width:13%">
</colgroup>
    <thead class="sort">
        <tr>
            <th scope="col" rowspan="4"><input type="checkbox" name="compareAllChk" id="compareAllChk" value="" title="펀드 전체 선택"></th>
            <th scope="col" rowspan="4" class="off"><a column="FundKrNm" href="#" class="up" title="올림차순으로 정렬">펀드명</a></th>
            <th scope="colgroup" colspan="4">수익률(%)</th>
            <th scope="col" rowspan="2">3개월 설정액 추이<br>(억)</th>
            <th scope="col" rowspan="2">바로가기</th>
        </tr>
        <tr>
            <th scope="col" class="off"><a column="Yield1M" href="#" class="down" title="내림차순으로 정렬">1개월</a></th>
            <th scope="col" class="off"><a column="Yield3M" href="#" class="down" title="내림차순으로 정렬">3개월</a></th>
            <th scope="col" class="off"><a column="Yield6M" href="#" class="down" title="내림차순으로 정렬">6개월</a></th>
            <th scope="col" class="off"><a column="AnnYield" href="#" class="down" title="내림차순으로 정렬">1년</a></th>
        </tr>
    </thead>

    <tbody id="bodyMutuelList">
    <%
          int prdeLen=prdlist.size();
          for(int i=0; i<prdeLen;i++){
        	  ProductDTO prd = prdlist.get(i);
                         
          %> 
    <tr>
    	<td>
    		<div class = "checkbox">
    			<input type="checkbox" name="compareChk" id="compareChk" value=" " title="">
    		</div>
   		</td>
   		 
    	<td class="prd">
    		<p class="title">
    			<a href=""><%=prd.getTitle()%></a>
   			</p>
   			<ul class="fund-details">	
   				<li> 
   					<dl>
   						<dt>설정일</dt>
   						<dd><%=prd.getPrdate()%></dd>
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
		 	 	 		<dd><%=prd.getScale()%>억원</dd>
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
		 	 	 		<dd><%=prd.getCharge()%>%</dd>
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
	
      	<td class="prd">
            <em class="up"><%=prd.getOneprofit()%>%</em>
        </td>
        <td class="prd">
        	<em class="down"><%=prd.getThreeprofit()%>%</em>
       	</td>
       	<td class="prd">
        	<em class="up"><%=prd.getSixprofit()%>%</em>
       	</td>
       	<td class="prd">
        	<em class="down"><%=prd.getTwelveprofit()%>%</em>
       	</td>
     </tr>
     <%} %>   
   </tbody>
</table>

<div class="btn-area">
    <div class="pagingNav" id="divMutuel"">
    </div>
</div>
                </div>
            </div>

            <div id="tab_content2" style="display:inline;">

            </div>

            <div id="tab_content3" style="display:inline;">

            </div>

            <div id="tab_content4" style="display:inline;">

            </div>

        </div>
        <!-- // Contents -->
    </div>
    <!-- // Container -->
    <!-- Footer -->


    <!-- // Footer -->


<form name="frmFrameCheck" method="post" target="_self">

    <input type="hidden" name="rtnHfnURL" value="/finance/fund/search_cached.pop">

</form>



</body>
</html>