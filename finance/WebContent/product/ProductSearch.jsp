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
/* 	alert("����"); */
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
		//��alert("TEST"+$(this).val());
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
			strHtml +='						<dt>������</dt>';
			strHtml +='						<dd>'+prd[i].prdate+'</dd>';
		strHtml +='					</dl>';
		strHtml +='				</li>';
		strHtml +='				<li>';
		strHtml +='					<dl>';	
		strHtml +='						<dt>����</dt>';
			strHtml +='						<dd>'+prd[i].type+'</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';
		strHtml +='				<li class ="bul">';
		strHtml +='					<dl class="bold">';	
		strHtml +='						<dt>�Ѽ�����</dt>';
			strHtml +='						<dd>'+prd[i].scale+'���</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';
		strHtml +='				<li>';
		strHtml +='					<dl>';	
		strHtml +='						<dt>����</dt>';
			strHtml +='						<dd>'+prd[i].opname+'</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';
		strHtml +='				<li class="bul">';
		strHtml +='					<dl class="bold">';	
		strHtml +='						<dt>�Ѻ���</dt>';
			strHtml +='						<dd>'+prd[i].charge+'%</dd>';
		strHtml +='					</dl>';	
		strHtml +='				</li>';	
		strHtml +='				<li class="bul">';
		strHtml +='					<dl class="bold">';	
		strHtml +='						<dt>������</dt>';
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
		cmt2 +='<h2>'+schText+' �˻���� '+prdCount+' ��</h3>';
		$("#rstCmt").html(cmt2);
	}else{
		var cmt ="";
		cmt +='<h2> ��ü: '+prdCount+' ��</h3>';
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
		/* alert("���Դ�"+schText); */
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
	<span><a href="#contents">�����ٷΰ���</a></span>
	<span><a href="#nav">�ָ޴��ٷΰ���</a></span>
	
</p>


    <!-- // Header -->
    <!-- Container -->
    <div id="container">
        <!-- Contents -->
        <div id="contents" class="finance" style="width:1100px;">
            <span class="blind">����</span>
            
            <h1 style="color:black;">����Ʈ�˻�</h1>
          <div id="tab_content1">
            
                

 <form name="frm" id="frm" method="post" onsubmit="return false;">
 <div class="search fund chking">
     <fieldset>
     <legend>�ݵ�˻�</legend>
         <input type="text" name="SearchText" id="SearchText"  value="" title="�ݵ��">
         <input type="hidden" name="YieldMM" id="YieldMM"  value="3" title="�ݵ��">
         <a href="javascript:doSmartSearchList('1');" class="btn">�ݵ�˻�</a>
         <dl id="dlKeyword">
         </dl>
     </fieldset>
     <hr>
     <table class="tbl-type">
     <caption><strong>�ݵ� �˻� ���� ����</strong></caption>
         <thead>
             <tr>
                 <th scope="col">�ݵ屸��</th>
                 <th scope="col">�ݵ�����</th>
                 <th scope="col">�����Ⱓ</th>
                 <th scope="col">�Ѽ�����</th>
                 <th scope="col">���ͷ�(3����)</th>
                 <th scope="col">�Ѻ���</th>
                 <th scope="col">������</th>
			     <th scope="col">����</th>	
                 
             </tr>
         </thead>
         <tbody>
             <tr>
                           
                 <td>
                     <ul>
                       <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-all" value="" > <label for="fund1-1">��ü</label></li>
                         <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-2" value="����"> <label for="fund1-2">����</label></li>
                         <li><input type="checkbox"  class="chk1" name="ForgnSectCd" id="fund1-3" value="�ؿ�" > <label for="fund1-3">�ؿ�</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                         <li><input type="checkbox" class="chk2"name="FundInvstTypeCd" id="fund2-all" value="" > <label for="fund2-1">��ü</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-2" value="�ֽ���" > <label for="fund2-2">�ֽ���</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-3" value="�ֽ�ȥ����" > <label for="fund2-3">�ֽ�ȥ����</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-4" value="ä��ȥ����" > <label for="fund2-4">ä��ȥ����</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-5" value="ä����"   > <label for="fund2-5">ä����</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-6" value="�ε�����" > <label for="fund2-6">�ε�����</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-7" value="MMF"   > <label for="fund2-7">MMF</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-8" value="�Ļ���ǰ"   > <label for="fund2-8">�Ļ���ǰ</label></li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-9" value="��Ÿ"  > <label for="fund2-9">��Ÿ</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul class="scroll">
                         <li><input type="checkbox" class="chk3all" name="SetPeriodMM" id="fund3-all" value=""  > <label for="fund3-1">��ü</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-2" value="1-"      > <label for="fund3-2">1���� �̸�</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-3" value="1-3"      > <label for="fund3-3">1~3����</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-4" value="3-6"      > <label for="fund3-4">3~6����</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-5" value="6-12"     > <label for="fund3-5">6����~1��</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-6" value="12-24"    > <label for="fund3-6">1~2��</label></li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-7" value="24-" > <label for="fund4-7">2�� �ʰ�</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                         <li><input type="checkbox" class="chk4all" name="kfrEstabAmUk" id="fund4-all" value="" > <label for="fund4-1">��ü</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-2" value="10-"       > <label for="fund4-2">10�� �̸�</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-3" value="10-30"      > <label for="fund4-3">10~30��</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-4" value="30-50"      > <label for="fund4-4">30~50��</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-5" value="50-100"     > <label for="fund4-5">50~100��</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-6" value="100-500"    > <label for="fund4-6">100~500��</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-7" value="500-" > <label for="fund4-7">500�� �ʰ�</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                          <li><input type="checkbox" class="chk5all" name="Yield" id="fund5-all" value="" > <label for="fund5-1">��ü</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-2" value="0-"> <label for="fund5-2">0% �̸�</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-3" value="0-10"> <label for="fund5-3">0~10%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-4" value="10-20"> <label for="fund5-4">10~20%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-5" value="20-30"> <label for="fund5-5">20~30%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-6" value="30-40"> <label for="fund5-6">30~40%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-7" value="40-50"> <label for="fund5-7">40~50%</label></li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-8" value="50-"> <label for="fund5-8">50% �ʰ�</label></li>
                     </ul>
                 </td>
                           
                 <td>
                     <ul>
                         <li><input type="checkbox" class="chk6all" name="TotRwrt" id="fund6-all" value="" > <label for="fund6-1">��ü</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-2" value="1-"> <label for="fund6-2">1% �̸�</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-3" value="1-2"> <label for="fund6-3">1~2%</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-4" value="2-3"> <label for="fund6-4">2~3%</label></li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-5" value="3-"> <label for="fund6-5">3% �ʰ�</label></li>                     
                        </ul>
                 </td>
                           
                 <td>
                      <ul id ="Std" >
                    	 <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-all" value=""> <label for="fund7-all">��ü</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-1" value="0.5-"><label for="fund7-1">�ſ� ���� ����</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-2" value="0.5-5"><label for="fund7-2">���� ����</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-3" value="5-10"><label for="fund7-3">���� ����</label></li>
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-4" value="10-15"><label for="fund7-4">�ټ� ���� ����</label></li>
                          <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-5" value="15-25"><label for="fund7-5">���� ����</label></li>
                           <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-6" value="25-"><label for="fund-7-6">�ſ� ���� ����</label></li>
                         
                     </ul>
                 </td>
                           
                <td>
                     <ul class="scroll" id="getOperCoListUl">
                     	<li><input type="checkbox" class="chk8" name="OperCoCdListAll" id="fund8-all" value="">��ü</li>
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
         <a href="javascript:checkSelectedValue();" class="btn big">���� �������� �˻�</a>
         <a href="javascript:clearSmartSearch();" class="btn3 big refresh">���� �ʱ�ȭ</a>
      
     </div>
 </div>
 
 <input type="hidden" name="RpayDisDtYn" value="N">
 
 </form>
                <div id="fundListDiv">
                
<!--                 <div class="board-paging">
    <p class="total"></p>
    <div class="fr">
        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:initList();" class="refresh">�ʱ�ȭ</a>
    </div>
</div>
                 -->    
<!-- 
<div class="board-paging">
    <p class="total"></p>
    <div class="fr">
        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:initList();" class="refresh">�ʱ�ȭ</a>
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
            <li class="off" ><a href="#" column="FstSetDt" class="down" title="������������ ����">������</a></li>
            <li class="off"><a href="#" column="fundClasSum" class="down" title="������������ ����">�Ѽ�����</a></li>
            <li class="off"><a href="#" column="TotRwrt" class="up" title="�ø��������� ����">�Ѻ���</a></li>
        </ul>
        <fieldset>
        <legend>�ݵ� ������ ���û���</legend>
        	
            <select name="" id="fundAttr" title="�ݵ�Ӽ� ����">
                <option value="" selected>�ݵ�Ӽ�</option>
                <option value="recomYn">��õ</option>
                <option value="bestYn">�Ǹź���Ʈ</option>
                <option value="newYn">�ű�</option>
                <option value="rankYn">��ŷ</option>
                <option value="themeYn">�׸�</option>
            </select>
            <select id="listRow" name="listRow" title="����Ʈ ���� ����">
	            <option value="10" selected>10����</option>    
	            <option value="20" >20����</option>
                <option value="40">40����</option>
                <option value="60">60����</option>
            </select>
            <a href="javascript:goListCnt();" class="btn3" title="�ݵ� �˻���� ����">����</a>
        </fieldset>
    </div>
</div>
<table class="tbl-type fund fsL">
<caption><strong>�ݵ� �˻� ��� ���</strong></caption>
<colgroup>
    <col style="width:3%">
    <col>
    <col style="width:8.5%" span="4">	<!-- 20140615 ���� -->
    <col style="width:13%">
    <col style="width:11%">
</colgroup>
    <thead class="sort">
        <tr>
          <th scope="col" rowspan="2"></th>
            <th scope="col" rowspan="4" class="off"><a column="FundKrNm" href="#" class="up" title="�ø��������� ����">�ݵ��</a></th>
            <th scope="colgroup" colspan="6">���ͷ�(%)</th>
          <!--   <th scope="col" rowspan="2"><input type="checkbox" name="compareAllChk" id="compareAllChk" value="" title="�ݵ� ��ü ����"></th>
            <th scope="col" rowspan="2" class="off"><a column="FundKrNm" href="#" class="up" title="�ø��������� ����">�ݵ��</a></th>
            <th scope="colgroup" colspan="4">���ͷ�(%)</th>
            <th scope="col" rowspan="2">3���� ������ ����<br>(��)</th>
            <th scope="col" rowspan="2">�ٷΰ���</th> -->
        </tr>
        <tr>
            <th scope="col" class="off"><a column="Yield1M" href="#" class="down" title="������������ ����">1����</a></th>
            <th scope="col" class="off"><a column="Yield3M" href="#" class="down" title="������������ ����">3����</a></th>
            <th scope="col" class="off"><a column="Yield6M" href="#" class="down" title="������������ ����">6����</a></th>
            <th scope="col" class="off"><a column="AnnYield" href="#" class="down" title="������������ ����">1��</a></th>
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
   						<dt>������</dt>
   						<dd><%=prd.getPrdate().substring(0,11)%></dd>
   					</dl>
				</li>
			 	<li>
					 <dl>
					 	 <dt>����</dt>
				 	 	 <dd><%=prd.getType()%></dd>
			 	 	 </dl>
		 	 	 </li>
	 	 	 	<li class="bul">
	 	 	 		<dl class="bold">
		 	 	 		<dt>�Ѽ�����</dt>
		 	 	 		<dd><%=Float.parseFloat(prd.getScale())%>���</dd>
		 	 	 	</dl>
 			 	</li>
	 			 <li>
 	 	 			 <dl>
	 	 	 			 <dt>����</dt>
	 	 	 			 <dd><%=prd.getOpname()%></dd>
 	 	 			 	</dl>
 			 	</li>
 			 	<li class="bul">
 			 	 	 <dl class="bold">
 			 	 	 	<dt>�Ѻ���</dt>
		 	 	 		<dd><%=dfomat.format(Float.parseFloat(prd.getCharge())*100)%>%</dd>
	 	 	 		</dl>
 	 	 		</li>
 	 	 		
 	 	 		<li class="bul">
 			 	 	 <dl class="bold">
 			 	 	 	<dt>������</dt>
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
        <a name="compareBtn" href="#" class="btn4" title="�˾� ���">üũ��</a>
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
